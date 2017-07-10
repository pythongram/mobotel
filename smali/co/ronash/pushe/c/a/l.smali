.class public Lco/ronash/pushe/c/a/l;
.super Landroid/os/AsyncTask;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lco/ronash/pushe/c/a/k;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Lco/ronash/pushe/c/a/k;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/c/a/l;->a:Lco/ronash/pushe/c/a/k;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private a()V
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/c/a/l;->a:Lco/ronash/pushe/c/a/k;

    invoke-static {v0}, Lco/ronash/pushe/c/a/k;->a(Lco/ronash/pushe/c/a/k;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lco/ronash/pushe/c/a/l;->a:Lco/ronash/pushe/c/a/k;

    invoke-static {v0}, Lco/ronash/pushe/c/a/k;->a(Lco/ronash/pushe/c/a/k;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_11
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lco/ronash/pushe/c/a/l;->a()V

    iget-object v0, p0, Lco/ronash/pushe/c/a/l;->a:Lco/ronash/pushe/c/a/k;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lco/ronash/pushe/c/a/k;->a(Lco/ronash/pushe/c/a/k;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    :try_start_d
    iget-object v0, p0, Lco/ronash/pushe/c/a/l;->a:Lco/ronash/pushe/c/a/k;

    invoke-static {v0}, Lco/ronash/pushe/c/a/k;->a(Lco/ronash/pushe/c/a/k;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lco/ronash/pushe/c/a/l;->a:Lco/ronash/pushe/c/a/k;

    invoke-static {v0}, Lco/ronash/pushe/c/a/k;->a(Lco/ronash/pushe/c/a/k;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lco/ronash/pushe/c/a/l;->a:Lco/ronash/pushe/c/a/k;

    invoke-static {v0}, Lco/ronash/pushe/c/a/k;->a(Lco/ronash/pushe/c/a/k;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    iget-object v0, p0, Lco/ronash/pushe/c/a/l;->a:Lco/ronash/pushe/c/a/k;

    invoke-static {v0}, Lco/ronash/pushe/c/a/k;->a(Lco/ronash/pushe/c/a/k;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_32} :catch_33

    :goto_32
    return-void

    :catch_33
    move-exception v0

    const-string v1, "Error in setting notification\'s sound url"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_32
.end method

.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/ronash/pushe/c/a/l;->b:Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lco/ronash/pushe/c/a/l;->c:I

    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Landroid/app/Notification;

    iput-object v0, p0, Lco/ronash/pushe/c/a/l;->d:Landroid/app/Notification;

    iget-object v0, p0, Lco/ronash/pushe/c/a/l;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lco/ronash/pushe/c/a/l;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 7

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lco/ronash/pushe/c/a/l;->a:Lco/ronash/pushe/c/a/k;

    invoke-static {v0}, Lco/ronash/pushe/c/a/k;->b(Lco/ronash/pushe/c/a/k;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lco/ronash/pushe/c/a/l;->a:Lco/ronash/pushe/c/a/k;

    invoke-static {v1}, Lco/ronash/pushe/c/a/k;->b(Lco/ronash/pushe/c/a/k;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eq v1, v4, :cond_4c

    if-ne v1, v3, :cond_4c

    iget-object v1, p0, Lco/ronash/pushe/c/a/l;->d:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->defaults:I

    :cond_2e
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    iget v1, p0, Lco/ronash/pushe/c/a/l;->c:I

    iget-object v2, p0, Lco/ronash/pushe/c/a/l;->d:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lco/ronash/pushe/c/a/m;

    invoke-direct {v1, p0}, Lco/ronash/pushe/c/a/m;-><init>(Lco/ronash/pushe/c/a/l;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4b
    return-void

    :cond_4c
    if-ne v1, v4, :cond_2e

    if-eq v1, v3, :cond_2e

    if-nez v1, :cond_2e

    iget v1, p0, Lco/ronash/pushe/c/a/l;->c:I

    iget-object v2, p0, Lco/ronash/pushe/c/a/l;->d:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_4b
.end method
