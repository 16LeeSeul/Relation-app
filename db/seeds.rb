date = Date.new(2015,07,20)

User.create!(email: 'admin@rapp.com', password: '123123')  # ! : 에러가 났을 때 에러메세지가 나타남
Profile.create(user: User.last, role: 'admin', name: 'admmin', address: '서울시', mobile: '01013345678', birth: date)

User.create(email: 'editor1@rapp.com', password: '123123')
Profile.create(user: User.last, role: 'editor', name: 'editor1', address: '서울시', mobile: '01012344678', birth: date)

User.create(email: 'editor2@rapp.com', password: '123123')
Profile.create(user: User.last, role: 'editor', name: 'editor2', address: '서울시', mobile: '01012388678', birth: date)

User.create(email: 'editor3@rapp.com', password: '123123')
Profile.create(user: User.last, role: 'editor', name: 'editor3', address: '서울시', mobile: '01012343978', birth: date)