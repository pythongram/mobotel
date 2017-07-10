.class Lorg/telegram/ui/VoIPActivity$4;
.super Ljava/lang/Object;
.source "VoIPActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 225
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$4;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x3

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 228
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v3

    .line 229
    .local v3, "svc":Lorg/telegram/messenger/voip/VoIPService;
    if-nez v3, :cond_a

    .line 272
    :goto_9
    return-void

    .line 231
    :cond_a
    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothHeadsetConnected()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 232
    new-instance v5, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity$4;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-direct {v5, v6}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    new-array v6, v9, [Ljava/lang/CharSequence;

    const-string v7, "VoipAudioRoutingBluetooth"

    const v8, 0x7f07057a

    .line 233
    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v4, "VoipAudioRoutingEarpiece"

    const v7, 0x7f07057b

    .line 234
    invoke-static {v4, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    const/4 v4, 0x2

    const-string v7, "VoipAudioRoutingSpeaker"

    const v8, 0x7f07057c

    .line 235
    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    new-array v4, v9, [I

    fill-array-data v4, :array_82

    new-instance v7, Lorg/telegram/ui/VoIPActivity$4$1;

    invoke-direct {v7, p0}, Lorg/telegram/ui/VoIPActivity$4$1;-><init>(Lorg/telegram/ui/VoIPActivity$4;)V

    .line 233
    invoke-virtual {v5, v6, v4, v7}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object v1

    .line 261
    .local v1, "bldr":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->show()Lorg/telegram/ui/ActionBar/BottomSheet;

    goto :goto_9

    .line 264
    .end local v1    # "bldr":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    :cond_53
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity$4;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;
    invoke-static {v5}, Lorg/telegram/ui/VoIPActivity;->access$600(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CheckableImageView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/voip/CheckableImageView;->isChecked()Z

    move-result v5

    if-nez v5, :cond_7c

    .line 265
    .local v2, "checked":Z
    :goto_5f
    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity$4;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;
    invoke-static {v4}, Lorg/telegram/ui/VoIPActivity;->access$600(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CheckableImageView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setChecked(Z)V

    .line 266
    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity$4;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/VoIPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 267
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 268
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_9

    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v2    # "checked":Z
    :cond_7c
    move v2, v4

    .line 264
    goto :goto_5f

    .line 270
    .restart local v0    # "am":Landroid/media/AudioManager;
    .restart local v2    # "checked":Z
    :cond_7e
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    goto :goto_9

    .line 235
    :array_82
    .array-data 4
        0x7f0200fe
        0x7f02015b
        0x7f020191
    .end array-data
.end method
