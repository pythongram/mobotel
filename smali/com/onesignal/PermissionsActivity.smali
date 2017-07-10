.class public Lcom/onesignal/PermissionsActivity;
.super Landroid/app/Activity;
.source "PermissionsActivity.java"


# static fields
.field private static final REQUEST_LOCATION:I = 0x2

.field private static activityAvailableListener:Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

.field static answered:Z

.field static waiting:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private requestPermission()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_b

    .line 72
    invoke-virtual {p0}, Lcom/onesignal/PermissionsActivity;->finish()V

    .line 80
    :cond_a
    :goto_a
    return-void

    .line 76
    :cond_b
    sget-boolean v0, Lcom/onesignal/PermissionsActivity;->waiting:Z

    if-nez v0, :cond_a

    .line 77
    sput-boolean v2, Lcom/onesignal/PermissionsActivity;->waiting:Z

    .line 78
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/onesignal/LocationGMS;->requestPermission:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/onesignal/AndroidSupportV4Compat$ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_a
.end method

.method static startPrompt()V
    .registers 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/onesignal/PermissionsActivity;->waiting:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/onesignal/PermissionsActivity;->answered:Z

    if-eqz v0, :cond_9

    .line 115
    :cond_8
    :goto_8
    return-void

    .line 103
    :cond_9
    new-instance v0, Lcom/onesignal/PermissionsActivity$1;

    invoke-direct {v0}, Lcom/onesignal/PermissionsActivity$1;-><init>()V

    sput-object v0, Lcom/onesignal/PermissionsActivity;->activityAvailableListener:Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    .line 114
    sget-object v0, Lcom/onesignal/PermissionsActivity;->activityAvailableListener:Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    invoke-static {v0}, Lcom/onesignal/ActivityLifecycleHandler;->setActivityAvailableListener(Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;)V

    goto :goto_8
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    if-eqz p1, :cond_12

    const-string v0, "android:hasCurrentPermissionsRequest"

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/PermissionsActivity;->waiting:Z

    .line 58
    :goto_11
    return-void

    .line 57
    :cond_12
    invoke-direct {p0}, Lcom/onesignal/PermissionsActivity;->requestPermission()V

    goto :goto_11
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 64
    sget-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    if-eqz v0, :cond_a

    .line 65
    invoke-direct {p0}, Lcom/onesignal/PermissionsActivity;->requestPermission()V

    .line 66
    :cond_a
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 84
    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/PermissionsActivity;->answered:Z

    .line 85
    sput-boolean v1, Lcom/onesignal/PermissionsActivity;->waiting:Z

    .line 87
    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    .line 88
    array-length v0, p3

    if-lez v0, :cond_1c

    aget v0, p3, v1

    if-nez v0, :cond_1c

    .line 89
    invoke-static {}, Lcom/onesignal/LocationGMS;->startGetLocation()V

    .line 94
    :cond_13
    :goto_13
    sget-object v0, Lcom/onesignal/PermissionsActivity;->activityAvailableListener:Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    invoke-static {v0}, Lcom/onesignal/ActivityLifecycleHandler;->removeActivityAvailableListener(Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/onesignal/PermissionsActivity;->finish()V

    .line 96
    return-void

    .line 91
    :cond_1c
    invoke-static {}, Lcom/onesignal/LocationGMS;->fireFailedComplete()V

    goto :goto_13
.end method
