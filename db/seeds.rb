Institution.create(
  name: "UFZN",
  address: "Rua dos Bobos, número 0",
  email: "contato@ufzn.com"
)

Manager.create(
  name: "João Coordenador",
  email: "joão@ufzn.com",
  institution_id: 1
)

Theme.create(
  name: "4.1 Ajuda",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
)

SubTheme.create(
  name: "4.1.1 Ajudar os menino",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  theme_id: 1
)

for i in 1..100 do
  Project.create(
    title: "Ajudar as criança",
    genre: 1  ,
    status: "Aprovada e comtemplada com recursos",
    category: 1,
    investiment: 10000,
    grade: 10,
    sub_theme_id: 1,
    manager_id: 1,
    institution_id: 1,
  )
end
