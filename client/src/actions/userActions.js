// Synchronous action creators (return JS object)
export const setCurrentUser = user => {
    return {
        type: "SET_CURRENT_USER",
        user
    }
}

// Asynch action creators (returns dispatch fn in order to fetch from API)
const api_url = "http://localhost:3001/api/v1"

export const login = (user) => {
    return dispatch => {
        return fetch(`${api_url}/login`, {
            credentials: "include",
            method: "POST",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify(user)
        })
            .then(res => res.json())
            .then(res => {
                if (res.error) {
                    alert(res.error)
                } else {
                    dispatch(setCurrentUser(res.data))
                }
            })
            .catch(err => {return err})
    }
}