.class public Lco/ronash/pushe/service/GcmService;
.super Lcom/google/android/gms/gcm/GcmListenerService;


# instance fields
.field private a:Lco/ronash/pushe/i/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmListenerService;-><init>()V

    new-instance v0, Lco/ronash/pushe/i/a;

    invoke-direct {v0, p0}, Lco/ronash/pushe/i/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/ronash/pushe/service/GcmService;->a:Lco/ronash/pushe/i/a;

    return-void
.end method


# virtual methods
.method public onDeletedMessages()V
    .registers 2

    invoke-static {p0}, Lco/ronash/pushe/log/g;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lco/ronash/pushe/log/b;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lco/ronash/pushe/service/GcmService;->a:Lco/ronash/pushe/i/a;

    invoke-virtual {v0}, Lco/ronash/pushe/i/a;->a()V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    :try_start_0
    invoke-static {p0}, Lco/ronash/pushe/log/g;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lco/ronash/pushe/service/GcmService;->a:Lco/ronash/pushe/i/a;

    invoke-virtual {v0, p1, p2}, Lco/ronash/pushe/i/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    invoke-static {p0}, Lco/ronash/pushe/log/b;->a(Landroid/content/Context;)Lco/ronash/pushe/log/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lco/ronash/pushe/log/b;->a(Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method public onMessageSent(Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Lco/ronash/pushe/log/g;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lco/ronash/pushe/log/b;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lco/ronash/pushe/service/GcmService;->a:Lco/ronash/pushe/i/a;

    invoke-virtual {v0, p1}, Lco/ronash/pushe/i/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onSendError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lco/ronash/pushe/log/g;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lco/ronash/pushe/log/b;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lco/ronash/pushe/service/GcmService;->a:Lco/ronash/pushe/i/a;

    invoke-virtual {v0, p1, p2}, Lco/ronash/pushe/i/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
