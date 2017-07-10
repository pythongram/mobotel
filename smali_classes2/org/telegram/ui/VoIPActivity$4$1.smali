.class Lorg/telegram/ui/VoIPActivity$4$1;
.super Ljava/lang/Object;
.source "VoIPActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/VoIPActivity$4;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity$4;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/VoIPActivity$4;

    .prologue
    .line 238
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$4$1;->this$1:Lorg/telegram/ui/VoIPActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 241
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$4$1;->this$1:Lorg/telegram/ui/VoIPActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/VoIPActivity$4;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/VoIPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 242
    .local v0, "am":Landroid/media/AudioManager;
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-nez v1, :cond_15

    .line 259
    :goto_14
    return-void

    .line 244
    :cond_15
    packed-switch p2, :pswitch_data_36

    .line 258
    :goto_18
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$4$1;->this$1:Lorg/telegram/ui/VoIPActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/VoIPActivity$4;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/VoIPActivity;->onAudioSettingsChanged()V

    goto :goto_14

    .line 246
    :pswitch_20
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 247
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_18

    .line 250
    :pswitch_27
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 251
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_18

    .line 254
    :pswitch_2e
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 255
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_18

    .line 244
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_20
        :pswitch_27
        :pswitch_2e
    .end packed-switch
.end method
