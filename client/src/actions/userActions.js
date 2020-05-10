// Synchronous action creators (return JS object)
export const setCurrentUser = user => {
    return {
        type: "SET_CURRENT_USER",
        user
    }
}