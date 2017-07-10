.class public Lco/ronash/pushe/task/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/task/b;


# annotations
.annotation runtime Lco/ronash/pushe/task/a/a;
    f = true
    g = true
    h = true
.end annotation

.annotation runtime Lco/ronash/pushe/task/a/c;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/task/c;
    .registers 14

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v0, Lco/ronash/pushe/c/a/o;

    invoke-direct {v0, p1}, Lco/ronash/pushe/c/a/o;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lco/ronash/pushe/j;->a(Landroid/content/Context;)Lco/ronash/pushe/j;

    move-result-object v1

    invoke-virtual {v1}, Lco/ronash/pushe/j;->b()I

    move-result v1

    if-ne v1, v9, :cond_20

    invoke-static {p1}, Lco/ronash/pushe/j;->a(Landroid/content/Context;)Lco/ronash/pushe/j;

    move-result-object v1

    invoke-virtual {v1}, Lco/ronash/pushe/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/c/a/o;->a(Ljava/lang/String;)V

    sget-object v0, Lco/ronash/pushe/task/c;->a:Lco/ronash/pushe/task/c;

    :goto_1f
    return-object v0

    :cond_20
    const-string v1, "Pushe"

    const-string v2, "Trying to register to GCM"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lco/ronash/pushe/e/i;

    invoke-direct {v1, p1}, Lco/ronash/pushe/e/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lco/ronash/pushe/e/i;->b()Z

    move-result v1

    if-nez v1, :cond_47

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-gt v1, v2, :cond_47

    const-string v0, "READ_PHONE_STATE permission not granted to the app. Unable to register to GCM"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "Pushe "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lco/ronash/pushe/task/c;->b:Lco/ronash/pushe/task/c;

    goto :goto_1f

    :cond_47
    invoke-virtual {v0}, Lco/ronash/pushe/c/a/o;->e()Ljava/lang/String;

    move-result-object v1

    :try_start_4b
    invoke-static {p1}, Lco/ronash/pushe/j;->a(Landroid/content/Context;)Lco/ronash/pushe/j;

    move-result-object v2

    invoke-virtual {v2}, Lco/ronash/pushe/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v3

    const-string v4, "GCM"

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lcom/google/android/gms/iid/InstanceID;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6b

    const-string v0, "GCM register, Invalid token received from GCM, token is null "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lco/ronash/pushe/task/c;->c:Lco/ronash/pushe/task/c;

    goto :goto_1f

    :cond_6b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_8b

    const-string v0, "GCM register, Invalid token received from GCM, token length is less than 100"

    new-instance v1, Lco/ronash/pushe/log/d;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "token"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-direct {v1, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    sget-object v0, Lco/ronash/pushe/task/c;->c:Lco/ronash/pushe/task/c;

    goto :goto_1f

    :cond_8b
    const-string v3, "Successfully registered to GCM"

    new-instance v4, Lco/ronash/pushe/log/d;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Instance ID"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v1, 0x2

    const-string v6, "Sender ID"

    aput-object v6, v5, v1

    const/4 v1, 0x3

    invoke-static {p1}, Lco/ronash/pushe/j;->a(Landroid/content/Context;)Lco/ronash/pushe/j;

    move-result-object v6

    invoke-virtual {v6}, Lco/ronash/pushe/j;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x4

    const-string v6, "Token"

    aput-object v6, v5, v1

    const/4 v1, 0x5

    aput-object v2, v5, v1

    invoke-direct {v4, v5}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v3, v4}, Lco/ronash/pushe/log/g;->b(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    invoke-static {p1}, Lco/ronash/pushe/j;->a(Landroid/content/Context;)Lco/ronash/pushe/j;

    move-result-object v1

    invoke-virtual {v1}, Lco/ronash/pushe/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c9

    invoke-virtual {v0}, Lco/ronash/pushe/c/a/o;->d()V

    :cond_c9
    invoke-virtual {v0, v2}, Lco/ronash/pushe/c/a/o;->a(Ljava/lang/String;)V

    const-string v0, "Pushe"

    const-string v1, "Successfully registered to GCM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lco/ronash/pushe/task/c;->a:Lco/ronash/pushe/task/c;
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_d5} :catch_123
    .catch Lco/ronash/pushe/k/o; {:try_start_4b .. :try_end_d5} :catch_d7

    goto/16 :goto_1f

    :catch_d7
    move-exception v0

    :goto_d8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering with GCM server failed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lco/ronash/pushe/log/d;

    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "Message"

    aput-object v4, v3, v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-direct {v2, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    const-string v1, "Pushe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering with GCM server failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lco/ronash/pushe/task/c;->c:Lco/ronash/pushe/task/c;

    goto/16 :goto_1f

    :catch_123
    move-exception v0

    goto :goto_d8
.end method
