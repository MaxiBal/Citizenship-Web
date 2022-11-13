import { BrowserModule } from '@angular/platform-browser';
import { ErrorHandler, NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';
import { RouterModule } from '@angular/router';

import { AppComponent } from './app.component';
import { NavMenuComponent } from './components/nav-menu/nav-menu.component';
import { HomeComponent } from './components/home/home.component';
import { FetchDataComponent } from './components/fetch-data/fetch-data.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MaterialModule } from './modules/material/material.module';
import { NavBarComponent } from './components/nav-bar/nav-bar.component';
import { AuthService } from './modules/core/services/auth.service';
import { CoreModule } from './modules/core/core.module';
import { SharedModule } from './modules/shared/shared.module';
import { FeaturesModule } from './modules/features/features.module';
import { ServerErrorInterceptor } from './modules/core/interceptors/server-error.interceptor';
import { HeadersInterceptor } from './modules/core/interceptors/headers.interceptor';
import { GlobalErrorHandler } from './modules/core/handlers/global-error-handler';
import { AboutComponent } from './components/home/about/about.component';
import { HomeHeaderComponent } from './components/home/header/header.component';
import { FlexLayoutModule } from '@angular/flex-layout';
import { HeaderComponent } from './components/navigation/header/header.component';
import { SidenavComponent } from './components/navigation/sidenav/sidenav.component';
import { SidenavService } from './services/sidenav/sidenav.service';
import { NotFoundComponent } from './components/not-found/not-found.component';
import { GetStartedComponent } from './components/get-started/get-started.component';
import { AppRoutingModule } from './app-routing.module';
import { QuestionsSidebarComponent } from './modules/questions/components/questions-sidebar/questions-sidebar.component';
import { InfoComponent } from './components/home/info/info.component';
import { DirectivesModule } from './modules/directives/directives.module';

@NgModule({
  declarations: [
    AppComponent,
    NavMenuComponent,
    NavBarComponent,
    HomeComponent,
    FetchDataComponent,
    AboutComponent,
    HomeHeaderComponent,
    HeaderComponent,
    SidenavComponent,
    NotFoundComponent,
    GetStartedComponent,
    QuestionsSidebarComponent,
    InfoComponent,
  ],
  imports: [
    BrowserModule.withServerTransition({ appId: 'ng-cli-universal' }),
    MaterialModule,
    HttpClientModule,
    FormsModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    CoreModule,
    SharedModule,
    FeaturesModule,
    FlexLayoutModule,
    DirectivesModule,
  ],
  providers: [
    {
      provide: HTTP_INTERCEPTORS,
      useClass: HeadersInterceptor,
      multi: true,
    },
    {
      provide: HTTP_INTERCEPTORS,
      useClass: ServerErrorInterceptor,
      multi: true,
    },

    AuthService,
    SidenavService
  ],
  bootstrap: [AppComponent],
})
export class AppModule {}
