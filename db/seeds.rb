Photo.delete_all if Photo.count > 0
User.delete_all if User.count > 0
Tag.delete_all if Tag.count > 0

mHattrup = User.create(github_login: 'mHattrup', name: 'Mike Hattrup')
gPlake = User.create(github_login: 'gPlake', name: 'Glen Plake')
sSchmidt = User.create(github_login: 'sSchmidt', name: 'Scot Schmidt')

p1 = Photo.create(
    name: 'Dropping the Heart Chute',
    description: 'The heart chute is one of my favorite chutes',
    category: 'ACTION',
    user: gPlake)

p2 = Photo.create(
    name: 'Enjoying the sunshine',
    category: 'SELFIE',
    user: sSchmidt)

Photo.create(
    name: 'Gunbarrel 25',
    description: '25 laps on gunbarrel today',
    category: 'LANDSCAPE',
    user: sSchmidt)

Tag.create(photo: p1, user: gPlake)
Tag.create(photo: p2, user: sSchmidt)
Tag.create(photo: p2, user: mHattrup)
Tag.create(photo: p2, user: gPlake)
