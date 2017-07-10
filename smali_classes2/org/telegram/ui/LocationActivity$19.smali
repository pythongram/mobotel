.class Lorg/telegram/ui/LocationActivity$19;
.super Ljava/lang/Object;
.source "LocationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity;->showPermissionAlert(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LocationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 733
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$19;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 737
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$19;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/LocationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_9

    .line 747
    :goto_8
    return-void

    .line 741
    :cond_9
    :try_start_9
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 742
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 743
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$19;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/LocationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_39} :catch_3a

    goto :goto_8

    .line 744
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_3a
    move-exception v0

    .line 745
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_8
.end method
