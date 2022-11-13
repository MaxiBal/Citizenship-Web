import { ComponentFixture, TestBed } from '@angular/core/testing';

import { QuestionsSidebarComponent } from './questions-sidebar.component';

describe('QuestionsSidebarComponent', () => {
  let component: QuestionsSidebarComponent;
  let fixture: ComponentFixture<QuestionsSidebarComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ QuestionsSidebarComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(QuestionsSidebarComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
