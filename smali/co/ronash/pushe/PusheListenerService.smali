.class public Lco/ronash/pushe/PusheListenerService;
.super Landroid/app/Service;


# instance fields
.field private a:Landroid/content/Intent;

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lco/ronash/pushe/PusheListenerService;)Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/PusheListenerService;->a:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic b(Lco/ronash/pushe/PusheListenerService;)I
    .registers 2

    iget v0, p0, Lco/ronash/pushe/PusheListenerService;->b:I

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onMessageReceived(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 3

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8

    const/4 v3, 0x0

    iput-object p1, p0, Lco/ronash/pushe/PusheListenerService;->a:Landroid/content/Intent;

    iput p3, p0, Lco/ronash/pushe/PusheListenerService;->b:I

    new-instance v0, Lco/ronash/pushe/i;

    invoke-direct {v0, p0}, Lco/ronash/pushe/i;-><init>(Lco/ronash/pushe/PusheListenerService;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_19

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/i;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_17
    const/4 v0, 0x3

    return v0

    :cond_19
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lco/ronash/pushe/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_17
.end method
