variable rg_names {
    type = list(string)    
}

variable prefix {
    type = string
    default = "contoso"
}

variable region {           
    type = string
    default = "UK South"
}

variable tags {
    type = map     
    default = {
        company = "contoso corp"
    }        
}

variable vnets {
    type = list(map(string))    
}