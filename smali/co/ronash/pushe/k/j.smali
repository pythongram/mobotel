.class public Lco/ronash/pushe/k/j;
.super Lco/ronash/pushe/k/i;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lco/ronash/pushe/h/a/p;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lco/ronash/pushe/h/a/p;I)V
    .registers 4

    invoke-direct {p0}, Lco/ronash/pushe/k/i;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/k/j;->a:Landroid/content/Context;

    iput-object p2, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    iput p3, p0, Lco/ronash/pushe/k/j;->c:I

    return-void
.end method

.method private a(Lco/ronash/pushe/a/a;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->e()Lco/ronash/pushe/a/a;

    move-result-object v1

    if-eqz v1, :cond_16

    const-string v1, "action"

    invoke-virtual {p1}, Lco/ronash/pushe/a/a;->b()Lco/ronash/pushe/k/l;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    :cond_16
    const-string v1, "notification_id"

    iget v2, p0, Lco/ronash/pushe/k/j;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "orig_msg_id"

    iget-object v2, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/p;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "response_action"

    const-string v2, "clicked"

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "btn_id"

    invoke-virtual {v0, v1, p2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lco/ronash/pushe/k/j;->a:Landroid/content/Context;

    invoke-static {v1}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v1

    const-class v2, Lco/ronash/pushe/task/b/d;

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;Lco/ronash/pushe/k/l;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/app/Notification$Builder;)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/high16 v4, 0x8000000

    iget-object v0, p0, Lco/ronash/pushe/k/j;->a:Landroid/content/Context;

    invoke-static {}, Lco/ronash/pushe/k/a;->a()I

    move-result v1

    iget-object v2, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/p;->e()Lco/ronash/pushe/a/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lco/ronash/pushe/k/j;->a(Lco/ronash/pushe/a/a;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/k/j;->a:Landroid/content/Context;

    invoke-static {}, Lco/ronash/pushe/k/a;->a()I

    move-result v2

    invoke-direct {p0}, Lco/ronash/pushe/k/j;->d()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private b()Landroid/app/Notification$Style;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5d

    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    :goto_22
    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_67

    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_67

    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    :goto_3f
    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5c

    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    :cond_5c
    return-object v0

    :cond_5d
    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    goto :goto_22

    :cond_67
    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    goto :goto_3f
.end method

.method private b(Landroid/app/Notification$Builder;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/p;->z()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/p;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_56

    const/4 v0, 0x1

    :goto_15
    if-eqz v0, :cond_58

    invoke-direct {p0, p1}, Lco/ronash/pushe/k/j;->g(Landroid/app/Notification$Builder;)V

    :goto_1a
    iget-object v0, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/p;->v()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/p;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/p;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_37
    const/4 v0, 0x0

    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->n()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6b

    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6b

    invoke-direct {p0}, Lco/ronash/pushe/k/j;->c()Landroid/app/Notification$Style;

    move-result-object v0

    :cond_50
    :goto_50
    if-eqz v0, :cond_55

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_55
    return-void

    :cond_56
    const/4 v0, 0x0

    goto :goto_15

    :cond_58
    iget-object v0, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/p;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/p;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_1a

    :cond_6b
    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_93

    :cond_7f
    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_50

    :cond_93
    invoke-direct {p0}, Lco/ronash/pushe/k/j;->b()Landroid/app/Notification$Style;

    move-result-object v0

    goto :goto_50
.end method

.method private c()Landroid/app/Notification$Style;
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    :cond_22
    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f

    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    :cond_3f
    new-instance v1, Lco/ronash/pushe/i/d;

    invoke-direct {v1}, Lco/ronash/pushe/i/d;-><init>()V

    iget-object v2, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/p;->p()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6f

    iget-object v2, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/p;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6f

    iget-object v2, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/p;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/ronash/pushe/i/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_6c

    new-instance v0, Lco/ronash/pushe/f/a;

    const-string v1, "Downloading custom_notification big icon failed"

    invoke-direct {v0, v1}, Lco/ronash/pushe/f/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6c
    invoke-virtual {v0, v2}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    :cond_6f
    iget-object v2, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/p;->n()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9a

    iget-object v2, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/p;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9a

    iget-object v2, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/p;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/ronash/pushe/i/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_97

    new-instance v0, Lco/ronash/pushe/f/a;

    const-string v1, "Downloading custom_notification image failed"

    invoke-direct {v0, v1}, Lco/ronash/pushe/f/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_97
    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    :cond_9a
    return-object v0
.end method

.method private c(Landroid/app/Notification$Builder;)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/p;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/p;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    move v0, v1

    :goto_17
    iget-object v3, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v3}, Lco/ronash/pushe/h/a/p;->t()Z

    move-result v3

    if-eqz v3, :cond_41

    sget v1, Lco/ronash/pushe/R$drawable;->ic_pushe:I

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :cond_24
    :goto_24
    if-eqz v0, :cond_c3

    new-instance v0, Lco/ronash/pushe/i/d;

    invoke-direct {v0}, Lco/ronash/pushe/i/d;-><init>()V

    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/i/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_c0

    new-instance v0, Lco/ronash/pushe/f/a;

    const-string v1, "Downloading custom_notification large image icon failed"

    invoke-direct {v0, v1}, Lco/ronash/pushe/f/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    move v0, v2

    goto :goto_17

    :cond_41
    iget-object v3, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v3}, Lco/ronash/pushe/h/a/p;->A()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8e

    iget-object v3, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v3}, Lco/ronash/pushe/h/a/p;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ic_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/p;->A()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[- ]"

    const-string v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lco/ronash/pushe/k/j;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    iget-object v4, p0, Lco/ronash/pushe/k/j;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_24

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_24

    :cond_8e
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_b1

    :goto_94
    iget-object v2, p0, Lco/ronash/pushe/k/j;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "ic_silhouette"

    const-string v4, "drawable"

    iget-object v5, p0, Lco/ronash/pushe/k/j;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v1, :cond_b3

    if-lez v2, :cond_b3

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto/16 :goto_24

    :cond_b1
    move v1, v2

    goto :goto_94

    :cond_b3
    iget-object v1, p0, Lco/ronash/pushe/k/j;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto/16 :goto_24

    :cond_c0
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :cond_c3
    return-void
.end method

.method private d()Landroid/content/Intent;
    .registers 4

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    const-string v1, "notification_id"

    iget v2, p0, Lco/ronash/pushe/k/j;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "orig_msg_id"

    iget-object v2, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/p;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "response_action"

    const-string v2, "dismissed"

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lco/ronash/pushe/k/j;->a:Landroid/content/Context;

    invoke-static {v1}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v1

    const-class v2, Lco/ronash/pushe/task/b/d;

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;Lco/ronash/pushe/k/l;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/app/Notification$Builder;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/p;->q()I

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/p;->q()I

    move-result v0

    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->r()I

    move-result v1

    iget-object v2, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/p;->s()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    :cond_1d
    return-void
.end method

.method private e(Landroid/app/Notification$Builder;)V
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/p;->m()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    iget-object v0, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/p;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/h/a/q;

    iget-object v1, p0, Lco/ronash/pushe/k/j;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/q;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lco/ronash/pushe/k/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3f

    iget-object v1, p0, Lco/ronash/pushe/k/j;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "ic_empty"

    const-string v4, "drawable"

    iget-object v5, p0, Lco/ronash/pushe/k/j;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :cond_3f
    iget-object v3, p0, Lco/ronash/pushe/k/j;->a:Landroid/content/Context;

    invoke-static {}, Lco/ronash/pushe/k/a;->a()I

    move-result v4

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/q;->a()Lco/ronash/pushe/a/a;

    move-result-object v5

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/q;->d()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lco/ronash/pushe/k/j;->a(Lco/ronash/pushe/a/a;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_13
.end method

.method private f(Landroid/app/Notification$Builder;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/p;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/c/a/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    :cond_11
    return-void
.end method

.method private g(Landroid/app/Notification$Builder;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lco/ronash/pushe/k/j;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lco/ronash/pushe/R$layout;->custom_notification:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lco/ronash/pushe/i/d;

    invoke-direct {v1}, Lco/ronash/pushe/i/d;-><init>()V

    iget-object v2, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/p;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/ronash/pushe/i/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_26

    new-instance v0, Lco/ronash/pushe/f/a;

    const-string v1, "Downloading custom_notification big icon failed"

    invoke-direct {v0, v1}, Lco/ronash/pushe/f/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    sget v2, Lco/ronash/pushe/R$id;->notif_bkgrnd_image:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v2, 0x2

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lco/ronash/pushe/k/j;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lco/ronash/pushe/k/j;->a(Landroid/app/Notification$Builder;)V

    invoke-direct {p0, v0}, Lco/ronash/pushe/k/j;->b(Landroid/app/Notification$Builder;)V

    invoke-direct {p0, v0}, Lco/ronash/pushe/k/j;->c(Landroid/app/Notification$Builder;)V

    invoke-direct {p0, v0}, Lco/ronash/pushe/k/j;->d(Landroid/app/Notification$Builder;)V

    invoke-direct {p0, v0}, Lco/ronash/pushe/k/j;->e(Landroid/app/Notification$Builder;)V

    invoke-direct {p0, v0}, Lco/ronash/pushe/k/j;->f(Landroid/app/Notification$Builder;)V

    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->B()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    iget-object v1, p0, Lco/ronash/pushe/k/j;->b:Lco/ronash/pushe/h/a/p;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/p;->l()I

    move-result v1

    packed-switch v1, :pswitch_data_4c

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    :goto_2f
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    :pswitch_34
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    goto :goto_2f

    :pswitch_39
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    goto :goto_2f

    :pswitch_3e
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    goto :goto_2f

    :pswitch_43
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    goto :goto_2f

    :pswitch_47
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    goto :goto_2f

    :pswitch_data_4c
    .packed-switch -0x2
        :pswitch_47
        :pswitch_3e
        :pswitch_34
        :pswitch_39
        :pswitch_43
    .end packed-switch
.end method
