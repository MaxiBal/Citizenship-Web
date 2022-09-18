import { ErrorHandler, NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HTTP_INTERCEPTORS } from '@angular/common/http';
import { HeadersInterceptor } from './interceptors/headers.interceptor';
import { ServerErrorInterceptor } from './interceptors/server-error.interceptor';
import { GlobalErrorHandler } from './handlers/global-error-handler';

@NgModule({
  declarations: [],
  imports: [CommonModule],
  providers: [],
})
export class CoreModule { }
