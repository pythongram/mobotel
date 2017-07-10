.class public Lco/ronash/pushe/log/h;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lco/ronash/pushe/log/h;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lco/ronash/pushe/log/h;
    .registers 2

    sget-object v0, Lco/ronash/pushe/log/h;->a:Lco/ronash/pushe/log/h;

    if-nez v0, :cond_13

    const-class v1, Lco/ronash/pushe/log/h;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lco/ronash/pushe/log/h;->a:Lco/ronash/pushe/log/h;

    if-nez v0, :cond_12

    new-instance v0, Lco/ronash/pushe/log/h;

    invoke-direct {v0}, Lco/ronash/pushe/log/h;-><init>()V

    sput-object v0, Lco/ronash/pushe/log/h;->a:Lco/ronash/pushe/log/h;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lco/ronash/pushe/log/h;->a:Lco/ronash/pushe/log/h;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lco/ronash/pushe/log/h;->a()Lco/ronash/pushe/log/h;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lco/ronash/pushe/log/h;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    invoke-static {}, Lco/ronash/pushe/log/h;->a()Lco/ronash/pushe/log/h;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lco/ronash/pushe/log/h;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lco/ronash/pushe/log/h;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p2, v1}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    invoke-static {p1}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
