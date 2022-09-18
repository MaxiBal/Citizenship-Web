import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MaterialModule } from '../../material/material.module';
import { CoreModule } from '../../core/core.module';
import { SharedModule } from '../../shared/shared.module';

@NgModule({
  declarations: [],
  imports: [CommonModule, MaterialModule, CoreModule, SharedModule],
})
export class CitizenshipModule {}
