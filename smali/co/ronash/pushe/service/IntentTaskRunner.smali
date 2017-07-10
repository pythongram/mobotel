.class public Lco/ronash/pushe/service/IntentTaskRunner;
.super Landroid/app/IntentService;


# instance fields
.field private a:Lco/ronash/pushe/i/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "PusheIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .registers 6

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_8a

    :cond_1a
    :goto_1a
    packed-switch v0, :pswitch_data_9c

    const-string v0, "messageType in handleGcmReceiveMessage(Intent) is unknown."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11

    :sswitch_25
    const-string v3, "gcm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move v0, v1

    goto :goto_1a

    :sswitch_2f
    const-string v3, "send_event"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v0, 0x1

    goto :goto_1a

    :sswitch_39
    const-string v3, "send_error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v0, 0x2

    goto :goto_1a

    :sswitch_43
    const-string v3, "deleted_messages"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v0, 0x3

    goto :goto_1a

    :pswitch_4d
    invoke-virtual {p0}, Lco/ronash/pushe/service/IntentTaskRunner;->a()Lco/ronash/pushe/i/a;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/i/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_11

    :pswitch_5f
    invoke-virtual {p0}, Lco/ronash/pushe/service/IntentTaskRunner;->a()Lco/ronash/pushe/i/a;

    move-result-object v0

    const-string v1, "google.message_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/i/a;->b(Ljava/lang/String;)V

    goto :goto_11

    :pswitch_6d
    invoke-virtual {p0}, Lco/ronash/pushe/service/IntentTaskRunner;->a()Lco/ronash/pushe/i/a;

    move-result-object v0

    const-string v1, "google.message_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/i/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :pswitch_81
    invoke-virtual {p0}, Lco/ronash/pushe/service/IntentTaskRunner;->a()Lco/ronash/pushe/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/i/a;->a()V

    goto :goto_11

    nop

    :sswitch_data_8a
    .sparse-switch
        -0x7aedf14e -> :sswitch_43
        0x18f11 -> :sswitch_25
        0x308f3e91 -> :sswitch_39
        0x3090df23 -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_5f
        :pswitch_6d
        :pswitch_81
    .end packed-switch
.end method


# virtual methods
.method public a()Lco/ronash/pushe/i/a;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/service/IntentTaskRunner;->a:Lco/ronash/pushe/i/a;

    if-nez v0, :cond_b

    new-instance v0, Lco/ronash/pushe/i/a;

    invoke-direct {v0, p0}, Lco/ronash/pushe/i/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/ronash/pushe/service/IntentTaskRunner;->a:Lco/ronash/pushe/i/a;

    :cond_b
    iget-object v0, p0, Lco/ronash/pushe/service/IntentTaskRunner;->a:Lco/ronash/pushe/i/a;

    return-object v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 9

    invoke-static {p0}, Lco/ronash/pushe/log/g;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lco/ronash/pushe/log/b;->b(Landroid/content/Context;)V

    if-eqz p1, :cond_1b

    :try_start_8
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "co.ronash.pushe.RUN_TASK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {p0}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/ronash/pushe/task/d;->a(Landroid/content/Intent;)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct {p0, p1}, Lco/ronash/pushe/service/IntentTaskRunner;->a(Landroid/content/Intent;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_2f} :catch_30

    goto :goto_1b

    :catch_30
    move-exception v0

    const-string v1, "Error in executing onHandleIntent of IntentTaskRunner "

    new-instance v2, Lco/ronash/pushe/log/d;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Action"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Action is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "Error"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    goto :goto_1b
.end method
