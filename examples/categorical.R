gendercats <- data.frame( label = c("male", "female")
                        , code = c("M","F")
                        )


gender <- categorical(c("male", "male", "female", "male"), cats=gendercats)

gender
categories(gender)
relabel(gender, "code")
