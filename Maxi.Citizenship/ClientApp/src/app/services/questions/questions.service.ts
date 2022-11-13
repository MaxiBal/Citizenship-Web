import { HttpClient } from '@angular/common/http';
import { Inject, Injectable, OnInit } from '@angular/core';
import { of, share, tap } from 'rxjs';
import { environment } from 'src/environments/environment';

export interface QuestionsResponse {
  questions: Question[];
}

@Injectable({
  providedIn: 'root'
})
export class QuestionsService {

  questions!: Question[];

  private audible: boolean = true;

  constructor(@Inject('BASE_URL') private baseUrl: string, private http: HttpClient) {

  }

  getQuestions() {
    if (this.questions) {
      return of(this.questions);
    }
    return this.http.get<Question[]>(`${this.baseUrl}${environment.url}`)
      .pipe(share(), tap((data: Question[]) => {this.questions = data}))
  }

  /**
   * Gets the length of the question array.  getQuestions() must be called before this method is used
   * @returns the length of the questions or -1 if the questions array does not exist
   */
  questionsLength() {
    if (this.questions) {
      return this.questions.length;
    }
    else {
      return -1
    }
  }


  getAudible() {
    return this.audible;
  }

  setAudible(o: boolean) {
    this.audible = o;
  }

  getAnswer(questionId: number) {
    const prevQuestion = this.questions.find(q => q.answers?.length);
    if (prevQuestion?.id === questionId) {
      prevQuestion.show_answer = false;
      prevQuestion.answers = [];
      return;
    }

    const url = `${this.baseUrl}api/questions/${questionId}/answers`;

    return this.http.get<Answer[]>(url);
  }

}



export interface Question {
  id: number;
  prompt: string | null;
  category: string | null;
  categoryId: number;
  subCategory: string | null;
  subCategoryId: number;
  hasAsterisk: boolean;
  imageUrl: string | null;

  answers: Answer[] | null;
  show_answer: boolean;
}

export interface Answer {
  id: number;
  questionId: number;
  key: string | null;
  addlInfo: string | null;
  imgUrl: string | null;
  isSupplemental: boolean;
  sort: number;
}
