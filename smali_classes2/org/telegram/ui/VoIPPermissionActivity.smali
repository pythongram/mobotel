.class public Lorg/telegram/ui/VoIPPermissionActivity;
.super Landroid/app/Activity;
.source "VoIPPermissionActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/VoIPPermissionActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 22
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 26
    const/16 v0, 0x65

    if-ne p1, v0, :cond_26

    .line 27
    array-length v0, p3

    if-lez v0, :cond_27

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_27

    .line 28
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 29
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->acceptIncomingCall()V

    .line 30
    :cond_19
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPPermissionActivity;->finish()V

    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/telegram/ui/VoIPActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/VoIPPermissionActivity;->startActivity(Landroid/content/Intent;)V

    .line 48
    :cond_26
    :goto_26
    return-void

    .line 33
    :cond_27
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v0}, Lorg/telegram/ui/VoIPPermissionActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 34
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 35
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall()V

    .line 36
    :cond_3c
    new-instance v0, Lorg/telegram/ui/VoIPPermissionActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPPermissionActivity$1;-><init>(Lorg/telegram/ui/VoIPPermissionActivity;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/voip/VoIPHelper;->permissionDenied(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_26

    .line 44
    :cond_45
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPPermissionActivity;->finish()V

    goto :goto_26
.end method
