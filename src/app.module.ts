import { Module } from '@nestjs/common';
import { CommonModule } from './common/common.module';
import { ContactModule } from './contact/contact.module';
import { UserModule } from './user/user.module';

@Module({
  imports: [CommonModule, UserModule, ContactModule],
  controllers: [],
  providers: [],
})
export class AppModule {}
