import { DatePipe } from '@angular/common';
import { Component, OnInit, ChangeDetectionStrategy, NgZone, Input, OnChanges, SimpleChanges } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Answer, Question, QuestionsService } from 'src/app/services/questions/questions.service';
import { QuestionDataService } from '../../../services/questiondata/questiondata.service';
import { VoiceRecognitionService } from '../../../services/voice-recognition/VoiceRecognition.service';


@Component({
  selector: 'question-audible',
  templateUrl: './audible.component.html',
  styleUrls: ['./audible.component.scss'],
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class AudibleComponent implements OnInit, OnChanges {

  text: string = ''

  @Input('questionId') questionid!: number;

  isUserSpeaking = false;

  constructor(
    private voiceRecognition: VoiceRecognitionService,
    private questionDataService: QuestionDataService) {

  }

  ngOnChanges(changes: SimpleChanges): void {
      this.text = '';
  }

  ngOnInit(): void {
    this.initVoiceInput();

    this.questionDataService.answer.subscribe((data: string) => {
      if (data === "") { this.text = ""; }
    })
  }



  /**
   * @description Function for initializing voice input so user can chat with machine.
   */
   initVoiceInput() {
    // Subscription for initializing and this will call when user stopped speaking.
    this.voiceRecognition.init().subscribe(() => {
      // User has stopped recording
      // Do whatever when mic finished listening
    });

    // Subscription to detect user input from voice to text.
    this.voiceRecognition.speechInput().subscribe((input) => {
      // Set voice text output to

      this.text = input;
    });
  }

  /**
   * @description Function to enable voice input.
   */
   startRecording() {
    this.isUserSpeaking = true;
    this.voiceRecognition.start();
  }

  /**
   * @description Function to stop recording.
   */
   stopRecording() {
    this.voiceRecognition.stop();
    this.isUserSpeaking = false;

    this.questionDataService.setAnswer(this.text);
  }

}
