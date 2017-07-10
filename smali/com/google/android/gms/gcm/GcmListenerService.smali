.class public abstract Lcom/google/android/gms/gcm/GcmListenerService;
.super Lcom/google/firebase/iid/zzb;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/firebase/iid/zzb;-><init>()V

    return-void
.end method

.method static zzD(Landroid/os/Bundle;)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v2, "google.c."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    :cond_22
    return-void
.end method

.method private zzl(Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "android.support.content.wakelockid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/gcm/zza;->zzE(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static {p0}, Lcom/google/android/gms/gcm/zza;->zzbu(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-static {p0}, Lcom/google/android/gms/gcm/zza;->zzbt(Landroid/content/Context;)Lcom/google/android/gms/gcm/zza;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/gcm/zza;->zzG(Landroid/os/Bundle;)Z

    :goto_21
    return-void

    :cond_22
    invoke-static {v0}, Lcom/google/android/gms/gcm/zza;->zzF(Landroid/os/Bundle;)V

    :cond_25
    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "from"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/gcm/GcmListenerService;->zzD(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/gcm/GcmListenerService;->onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_21
.end method

.method private static zzm(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    const-string v0, "google.message_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "message_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_e
    return-object v0
.end method


# virtual methods
.method public handleIntent(Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v1, "GcmListenerService"

    const-string v2, "Unknown intent action: "

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_22
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    return-void

    :cond_26
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_22

    :cond_2c
    const-string v0, "message_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_36

    const-string v0, "gcm"

    :cond_36
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_a6

    :cond_3e
    :goto_3e
    packed-switch v1, :pswitch_data_b8

    const-string v1, "GcmListenerService"

    const-string v2, "Received message with unknown type: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_9f

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_53
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :sswitch_57
    const-string v2, "gcm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v1, 0x0

    goto :goto_3e

    :sswitch_61
    const-string v2, "deleted_messages"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v1, 0x1

    goto :goto_3e

    :sswitch_6b
    const-string v2, "send_event"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v1, 0x2

    goto :goto_3e

    :sswitch_75
    const-string v2, "send_error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v1, 0x3

    goto :goto_3e

    :pswitch_7f
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/GcmListenerService;->zzl(Landroid/content/Intent;)V

    goto :goto_25

    :pswitch_83
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/GcmListenerService;->onDeletedMessages()V

    goto :goto_25

    :pswitch_87
    const-string v0, "google.message_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/GcmListenerService;->onMessageSent(Ljava/lang/String;)V

    goto :goto_25

    :pswitch_91
    invoke-static {p1}, Lcom/google/android/gms/gcm/GcmListenerService;->zzm(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/gcm/GcmListenerService;->onSendError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :cond_9f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_53

    nop

    :sswitch_data_a6
    .sparse-switch
        -0x7aedf14e -> :sswitch_61
        0x18f11 -> :sswitch_57
        0x308f3e91 -> :sswitch_75
        0x3090df23 -> :sswitch_6b
    .end sparse-switch

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_83
        :pswitch_87
        :pswitch_91
    .end packed-switch
.end method

.method public onDeletedMessages()V
    .registers 1

    return-void
.end method

.method public onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onMessageSent(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onSendError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method
