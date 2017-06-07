 SELECT "groups".* FROM "groups"
 INNER JOIN "memberships" ON "memberships"."group_id" = "groups"."id"
 INNER JOIN "users" ON "users"."id" = "memberships"."user_id"
 WHERE "groups"."name" = $1 AND "groups"."name" = $2 AND "users"."fName" = $3 AND "users"."lName" = $4  [["name", "GroupA"], ["name", "GroupB"], ["fName", "User"], ["lName", "A"]]