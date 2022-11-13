import { Injectable } from '@angular/core';
import { BehaviorSubject, Subject } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class QuestionDataService {

  constructor() { }

  private _correct: Subject<boolean> = new BehaviorSubject<boolean>(false);
  public correct = this._correct.asObservable();

  setCorrect(o: boolean) {
    this._correct.next(o);
  }



  private _answered: Subject<boolean> = new BehaviorSubject<boolean>(false);
  public answered = this._answered.asObservable();

  setAnswered(o: boolean) {
    this._answered.next(o);
  }

  private _answer: Subject<string> = new BehaviorSubject<string>("");
  public answer = this._answer.asObservable();

  setAnswer(s: string) {
    this._answer.next(s);
  }


}
