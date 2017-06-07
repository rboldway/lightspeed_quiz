SELECT "groups".* FROM "groups"
INNER JOIN "memberships" ON "memberships"."group_id" = "groups"."id"
INNER JOIN "users" ON "users"."id" = "memberships"."user_id"
WHERE "groups"."name" IN ('GroupA', 'GroupB') AND "users"."fName" = $1 AND "users"."lName" = $2  [["fName", "User"], ["lName", "A"]]