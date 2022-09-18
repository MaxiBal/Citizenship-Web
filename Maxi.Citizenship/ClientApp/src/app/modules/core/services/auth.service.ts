import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Inject, Injectable } from '@angular/core';
import { BehaviorSubject, Observable } from 'rxjs';
import { Claim } from '../models/claim';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  private loginUrl = '';
  private userUrl = '';
  private isLogged = false;

  logoutUrl$ = new BehaviorSubject<string | undefined>('');
  public LogoutUrl$: Observable<string | undefined> = this.logoutUrl$.asObservable();

  userName$ = new BehaviorSubject<string | undefined>('');
  public UserName$: Observable<string | undefined> = this.userName$.asObservable();

  expiresIn$ = new BehaviorSubject<number | undefined>(-1);
  public ExpiresIn$: Observable<number | undefined> = this.expiresIn$.asObservable();

  constructor(
    private http: HttpClient,
    @Inject('BASE_URL') private baseUrl: string) {

    this.loginUrl = baseUrl + 'bff/login?returnUrl=/';
    this.userUrl = baseUrl + 'bff/user';
  }

  login() {

    this.http.get<Claim[]>(this.UserUrl, { withCredentials: true })
      .subscribe({
        next: claims => {

          if (Array.isArray(claims)) {
            const logoutClaim = claims.find(claim => claim.type === 'bff:logout_url');
            const nameClaim = claims.find(claim => claim.type === 'name') || claims?.find(claim => claim.type === 'sub');
            const expiresInClaim = claims.find(claim => claim.type === 'bff:session_expires_in'); // This is the number of seconds the current session will be valid for

            this.logoutUrl$.next(logoutClaim?.value);
            this.userName$.next(nameClaim?.value);
            this.expiresIn$.next(Number(expiresInClaim?.value));
          }
        }

      });
  }

  get LoginUrl(): string {
    return this.loginUrl;
  }

  get UserUrl(): string {
    return this.userUrl;
  }

  get IsLogged(): boolean {
    return this.isLogged;
  }

  set IsLogged(val: boolean) {
    this.isLogged = val;
  }
}
