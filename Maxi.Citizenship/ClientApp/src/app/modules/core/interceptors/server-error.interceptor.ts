import { Injectable, OnInit } from '@angular/core';
import {
  HttpRequest,
  HttpHandler,
  HttpEvent,
  HttpInterceptor,
  HttpErrorResponse,
} from '@angular/common/http';
import { EMPTY, Observable, throwError } from 'rxjs';
import { retry, catchError } from 'rxjs/operators';
import { NavigationEnd, Router } from '@angular/router';

@Injectable({
  providedIn: 'root'
})
export class ServerErrorInterceptor implements HttpInterceptor, OnInit {
  private currentUrl = '';

  constructor(private router: Router) { }

  ngOnInit(): void {
    this.router.events.subscribe(event => {
      if (event instanceof NavigationEnd) {
        this.currentUrl = event.url;
      }
    });
  }

  intercept(
    request: HttpRequest<any>,
    next: HttpHandler
  ): Observable<HttpEvent<any>> {
    return next.handle(request).pipe(
      retry(1),
      catchError((error: HttpErrorResponse) => {
        if (error.status === 401) {
          if (this.currentUrl !== '' && this.currentUrl !== '/') {
            this.router.navigate(['/']);
          }          
          return EMPTY;
        } else {
          return throwError(() => new Error(error.message));
        }
      })
    );
  }
}
