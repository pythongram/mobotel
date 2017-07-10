.class final Lorg/telegram/messenger/AndroidUtilities$1;
.super Ljava/lang/Object;
.source "AndroidUtilities.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/AndroidUtilities;->isGoogleMapsInstalled(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .registers 2

    .prologue
    .line 288
    iput-object p1, p0, Lorg/telegram/messenger/AndroidUtilities$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 292
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "market://details?id=com.google.android.apps.maps"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 293
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lorg/telegram/messenger/AndroidUtilities$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    .line 297
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_18
    return-void

    .line 294
    :catch_19
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_18
.end method
