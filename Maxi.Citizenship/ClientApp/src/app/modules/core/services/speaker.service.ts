import { Injectable } from '@angular/core';
import { LoaderService } from './loader.service';

@Injectable({
  providedIn: 'root'
})
export class SpeakerService {
  defaultVoice: SpeechSynthesisVoice | undefined;
  nonDefaultVoice: SpeechSynthesisVoice | null = null;

  constructor() { }

  setupVoices(): void {
    if (this.nonDefaultVoice) { return; }

    const allVoices = window.speechSynthesis.getVoices();
    const usVoices = allVoices.filter(v => v.lang === 'en-US');

    this.defaultVoice = usVoices.find(v => v.default);

    const nonDefaultVoices = usVoices.filter(v => !v.default);

    if (Array.isArray(nonDefaultVoices)) {
      this.nonDefaultVoice = nonDefaultVoices.find(v => v.name.indexOf('Aria') > 0) || null;

      if (!this.nonDefaultVoice) {
        this.nonDefaultVoice = nonDefaultVoices.find(v => v.name.indexOf('Zira') > 0) || nonDefaultVoices[0];
      }
    }
    else if (Array.isArray(usVoices)) {
      this.nonDefaultVoice = usVoices[0];
    }
  }

  speak(text: string | null | undefined, useDefault: boolean): void {
    if (text) {
      this.setupVoices();

      const synth = window.speechSynthesis;

      const utterThis = new SpeechSynthesisUtterance(text);
      utterThis.voice = useDefault ? (this.defaultVoice || null) : this.nonDefaultVoice;

      synth.speak(utterThis);
    }
  }
}
