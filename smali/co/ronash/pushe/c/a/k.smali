.class public Lco/ronash/pushe/c/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/c/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lco/ronash/pushe/c/a/k;)Landroid/media/MediaPlayer;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/c/a/k;->b:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic a(Lco/ronash/pushe/c/a/k;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/c/a/k;->b:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    const/16 v4, 0x1e0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string v0, ""

    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0xa0

    if-gt v2, v3, :cond_54

    const-string v0, "-m"

    :cond_15
    :goto_15
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Notification Icon url for this device "

    new-instance v3, Lco/ronash/pushe/log/d;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "density"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    const-string v5, "Icon url"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    aput-object v0, v4, v1

    invoke-direct {v3, v4}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v2, v3}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    return-object v0

    :cond_54
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0xf0

    if-gt v2, v3, :cond_5d

    const-string v0, "-h"

    goto :goto_15

    :cond_5d
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0x140

    if-gt v2, v3, :cond_66

    const-string v0, "-xh"

    goto :goto_15

    :cond_66
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-le v2, v4, :cond_6e

    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-le v2, v4, :cond_15

    :cond_6e
    const-string v0, "-xxh"

    goto :goto_15
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method static synthetic b(Lco/ronash/pushe/c/a/k;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Lco/ronash/pushe/h/a/i;)V
    .registers 6

    const/4 v3, 0x0

    sget-object v0, Lco/ronash/pushe/h/a/j;->a:Lco/ronash/pushe/h/a/j;

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/i;->d()Lco/ronash/pushe/h/a/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "t30"

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/i;->d()Lco/ronash/pushe/h/a/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_19
    :goto_19
    return-void

    :cond_1a
    check-cast p1, Lco/ronash/pushe/h/a/p;

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->E()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lco/ronash/pushe/h/a/p;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_2a
    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->G()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lco/ronash/pushe/h/a/p;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_38
    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lco/ronash/pushe/c/a/k;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lco/ronash/pushe/h/a/p;->h(Ljava/lang/String;)V

    :cond_4b
    iget-object v0, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string v1, "notif_off"

    invoke-virtual {v0, v1, v3}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->y()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6e

    if-eqz v0, :cond_6b

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->C()Z

    move-result v0

    if-eqz v0, :cond_6e

    :cond_6b
    :try_start_6b
    invoke-virtual {p0, p1}, Lco/ronash/pushe/c/a/k;->a(Lco/ronash/pushe/h/a/p;)V
    :try_end_6e
    .catch Lco/ronash/pushe/f/a; {:try_start_6b .. :try_end_6e} :catch_72

    :cond_6e
    :goto_6e
    invoke-virtual {p0, p1}, Lco/ronash/pushe/c/a/k;->b(Lco/ronash/pushe/h/a/p;)V

    goto :goto_19

    :catch_72
    move-exception v0

    invoke-static {}, Lco/ronash/pushe/h/c;->a()Lco/ronash/pushe/h/c;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lco/ronash/pushe/h/c;->a(Landroid/content/Context;Lco/ronash/pushe/h/a;)V

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    const-string v1, "message_id"

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "image_retry"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "First attempt at loading notification failed, scheduling task"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v1

    const-class v2, Lco/ronash/pushe/task/b/c;

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/task/d;->b(Ljava/lang/Class;Lco/ronash/pushe/k/l;)V

    goto :goto_6e
.end method

.method public a(Lco/ronash/pushe/h/a/p;)V
    .registers 8

    const/4 v5, 0x0

    iget-object v0, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/d;->a(Landroid/content/Context;)Lco/ronash/pushe/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/d/d;->a()V

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/d/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_62

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->d()Lco/ronash/pushe/h/a/j;

    move-result-object v2

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/j;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/d/d;->a(Ljava/lang/String;I)J

    :cond_23
    invoke-static {}, Lco/ronash/pushe/k/a;->a()I

    move-result v1

    iget-object v0, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lco/ronash/pushe/k/i;->a(Landroid/content/Context;Lco/ronash/pushe/h/a/p;I)Lco/ronash/pushe/k/i;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/k/i;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/c/a/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8b

    new-instance v0, Lco/ronash/pushe/c/a/l;

    invoke-direct {v0, p0}, Lco/ronash/pushe/c/a/l;-><init>(Lco/ronash/pushe/c/a/k;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->w()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Lco/ronash/pushe/c/a/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_56
    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->u()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/k/p;->a(Landroid/content/Context;)V

    :cond_61
    :goto_61
    return-void

    :cond_62
    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->G()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->D()Z

    move-result v0

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring duplicate notification with MessageID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_61

    :cond_8b
    iget-object v0, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_56
.end method

.method public b(Lco/ronash/pushe/h/a/p;)V
    .registers 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "co.ronash.pushe.RECEIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->x()Lco/ronash/pushe/k/l;

    move-result-object v1

    if-eqz v1, :cond_40

    const-string v1, "Invoking custom message handler"

    new-instance v2, Lco/ronash/pushe/log/d;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Custom Message"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->x()Lco/ronash/pushe/k/l;

    move-result-object v5

    invoke-virtual {v5}, Lco/ronash/pushe/k/l;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->b(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->x()Lco/ronash/pushe/k/l;

    move-result-object v1

    invoke-static {v1}, Lco/ronash/pushe/k/m;->a(Lco/ronash/pushe/k/l;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "json"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_40
    new-instance v1, Lco/ronash/pushe/k/l;

    invoke-direct {v1}, Lco/ronash/pushe/k/l;-><init>()V

    const-string v2, "title"

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "bigTitle"

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "content"

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "bigContent"

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "summary"

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ticker"

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "imageUrl"

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "iconUrl"

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/p;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lco/ronash/pushe/k/m;->a(Lco/ronash/pushe/k/l;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "messageContent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
