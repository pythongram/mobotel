.class Lco/ronash/pushe/c/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lco/ronash/pushe/c/a/l;


# direct methods
.method constructor <init>(Lco/ronash/pushe/c/a/l;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/c/a/m;->a:Lco/ronash/pushe/c/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lco/ronash/pushe/c/a/m;->a:Lco/ronash/pushe/c/a/l;

    iget-object v0, v0, Lco/ronash/pushe/c/a/l;->a:Lco/ronash/pushe/c/a/k;

    invoke-static {v0}, Lco/ronash/pushe/c/a/k;->a(Lco/ronash/pushe/c/a/k;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lco/ronash/pushe/c/a/m;->a:Lco/ronash/pushe/c/a/l;

    iget-object v0, v0, Lco/ronash/pushe/c/a/l;->a:Lco/ronash/pushe/c/a/k;

    invoke-static {v0}, Lco/ronash/pushe/c/a/k;->a(Lco/ronash/pushe/c/a/k;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lco/ronash/pushe/c/a/m;->a:Lco/ronash/pushe/c/a/l;

    iget-object v0, v0, Lco/ronash/pushe/c/a/l;->a:Lco/ronash/pushe/c/a/k;

    invoke-static {v0}, Lco/ronash/pushe/c/a/k;->a(Lco/ronash/pushe/c/a/k;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    :cond_23
    :goto_23
    return-void

    :catch_24
    move-exception v0

    const-string v1, "Error in stopping media player of notification\'s sound"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_23
.end method
