.class public Lco/ronash/pushe/j;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static volatile b:Lco/ronash/pushe/j;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lco/ronash/pushe/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lco/ronash/pushe/j;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/j;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lco/ronash/pushe/j;
    .registers 3

    sget-object v0, Lco/ronash/pushe/j;->b:Lco/ronash/pushe/j;

    if-nez v0, :cond_13

    const-class v1, Lco/ronash/pushe/j;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lco/ronash/pushe/j;->b:Lco/ronash/pushe/j;

    if-nez v0, :cond_12

    new-instance v0, Lco/ronash/pushe/j;

    invoke-direct {v0, p0}, Lco/ronash/pushe/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lco/ronash/pushe/j;->b:Lco/ronash/pushe/j;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1a

    :cond_13
    sget-object v0, Lco/ronash/pushe/j;->b:Lco/ronash/pushe/j;

    iput-object p0, v0, Lco/ronash/pushe/j;->c:Landroid/content/Context;

    sget-object v0, Lco/ronash/pushe/j;->b:Lco/ronash/pushe/j;

    return-object v0

    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "co.ronash.pushe.token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_15} :catch_20

    move-result-object v1

    if-nez v1, :cond_44

    new-instance v0, Lco/ronash/pushe/k/o;

    const-string v1, "provided token is null"

    invoke-direct {v0, v1}, Lco/ronash/pushe/k/o;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_20
    move-exception v0

    new-instance v0, Lco/ronash/pushe/k/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can not be found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lco/ronash/pushe/k/o;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_52

    new-instance v0, Lco/ronash/pushe/k/o;

    const-string v1, "provided token is empty"

    invoke-direct {v0, v1}, Lco/ronash/pushe/k/o;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52
    const/4 v0, 0x0

    :try_start_53
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_64

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_64} :catch_6e

    :cond_64
    if-nez v0, :cond_8c

    new-instance v0, Lco/ronash/pushe/k/o;

    const-string v1, "provided senderId is null"

    invoke-direct {v0, v1}, Lco/ronash/pushe/k/o;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_6e
    move-exception v0

    new-instance v1, Lco/ronash/pushe/k/o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provided token problem - bad token - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lco/ronash/pushe/k/o;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8c
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9a

    new-instance v0, Lco/ronash/pushe/k/o;

    const-string v1, "provided senderId is empty"

    invoke-direct {v0, v1}, Lco/ronash/pushe/k/o;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9a
    const-string v1, "\\s+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_a2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_a5
    .catch Ljava/lang/NumberFormatException; {:try_start_a2 .. :try_end_a5} :catch_a6

    return-object v0

    :catch_a6
    move-exception v0

    new-instance v0, Lco/ronash/pushe/k/o;

    const-string v1, "provided senderId is not a valid integer"

    invoke-direct {v0, v1}, Lco/ronash/pushe/k/o;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d()V
    .registers 2

    sget-object v0, Lco/ronash/pushe/j;->b:Lco/ronash/pushe/j;

    iget-object v0, v0, Lco/ronash/pushe/j;->c:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lco/ronash/pushe/j;->b:Lco/ronash/pushe/j;

    invoke-virtual {v1, v0}, Lco/ronash/pushe/j;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lco/ronash/pushe/j;->c:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string v1, "$token"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Lco/ronash/pushe/j;->c:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lco/ronash/pushe/j;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .registers 5

    invoke-static {p1}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string v1, "$token_state"

    invoke-virtual {v0, v1, p2}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string v1, "$token"

    invoke-virtual {v0, v1, p2}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lco/ronash/pushe/j;->c:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lco/ronash/pushe/j;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b()I
    .registers 4

    iget-object v0, p0, Lco/ronash/pushe/j;->c:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string v1, "$token_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lco/ronash/pushe/j;->c:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string v1, "$instance_id"

    invoke-virtual {v0, v1, p2}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lco/ronash/pushe/j;->c:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string v1, "$sender_id"

    invoke-virtual {v0, v1, p1}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 7

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lco/ronash/pushe/j;->c:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string v1, "$sender_id"

    invoke-virtual {v0, v1, v3}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/ronash/pushe/j;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5b

    iget-object v0, p0, Lco/ronash/pushe/j;->c:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lco/ronash/pushe/j;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lco/ronash/pushe/j;->c:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string v2, "$sender_id"

    invoke-virtual {v0, v2, v3}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/ronash/pushe/j;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check format of senderId from sharedPref failed - senderId is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - set senderId with senderIdFromManifest"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lco/ronash/pushe/log/d;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "senderIdFromManifest"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v2}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    move-object v0, v1

    :cond_5b
    :goto_5b
    return-object v0

    :cond_5c
    const-string v1, "senderId successfully retrieved from manifest and sharedPref"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5b
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lco/ronash/pushe/j;->c:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lco/ronash/pushe/j;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public e()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lco/ronash/pushe/j;->c:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string v1, "$instance_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .registers 3

    invoke-virtual {p0}, Lco/ronash/pushe/j;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
