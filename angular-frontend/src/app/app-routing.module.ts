import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import {HomeComponent} from "./components/home/home.component";

const routes: Routes = [
  {path: 'ideas', component: HomeComponent},
  {path: '', redirectTo: '/ideas', pathMatch: 'full'},
  {path: '**', redirectTo: '/ideas', pathMatch: 'full'}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
