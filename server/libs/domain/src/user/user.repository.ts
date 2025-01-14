import { UserEntity } from '@app/infra';

export interface UserListFilter {
  excludeId?: string;
}

export const IUserRepository = 'IUserRepository';

export interface IUserRepository {
  get(id: string, withDeleted?: boolean): Promise<UserEntity | null>;
  getAdmin(): Promise<UserEntity | null>;
  getByEmail(email: string, withPassword?: boolean): Promise<UserEntity | null>;
  getByOAuthId(oauthId: string): Promise<UserEntity | null>;
  getList(filter?: UserListFilter): Promise<UserEntity[]>;
  create(user: Partial<UserEntity>): Promise<UserEntity>;
  update(id: string, user: Partial<UserEntity>): Promise<UserEntity>;
  delete(user: UserEntity): Promise<UserEntity>;
  restore(user: UserEntity): Promise<UserEntity>;
}
