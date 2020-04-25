mHattrup = User.create(github_login: 'mHattrup', name: 'Mike Hattrup')
gPlake = User.create(github_login: 'gPlake', name: 'Glen Plake')
sSchmidt = User.create(github_login: 'sSchmidt', name: 'Scot Schmidt')

Photo.create(
    name: 'Dropping the Heart Chute',
    description: 'The heart chute is one of my favorite chutes',
    category: 'ACTION',
    user: gPlake)

Photo.create(
    name: 'Enjoying the sunshine',
    category: 'SELFIE',
    user: sSchmidt)

Photo.create(
    name: 'Gunbarrel 25',
    description: '25 laps on gunbarrel today',
    category: 'LANDSCAPE',
    user: sSchmidt)
