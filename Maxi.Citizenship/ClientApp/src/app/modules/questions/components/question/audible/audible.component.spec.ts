import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AudibleComponent } from './audible.component';

describe('AudibleComponent', () => {
  let component: AudibleComponent;
  let fixture: ComponentFixture<AudibleComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AudibleComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(AudibleComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
