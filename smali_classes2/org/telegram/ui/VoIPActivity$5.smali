.class Lorg/telegram/ui/VoIPActivity$5;
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
    .line 274
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$5;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 277
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-nez v1, :cond_c

    .line 278
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$5;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/VoIPActivity;->finish()V

    .line 284
    :goto_b
    return-void

    .line 281
    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$5;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;
    invoke-static {v1}, Lorg/telegram/ui/VoIPActivity;->access$700(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CheckableImageView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/CheckableImageView;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2a

    const/4 v0, 0x1

    .line 282
    .local v0, "checked":Z
    :goto_19
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$5;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;
    invoke-static {v1}, Lorg/telegram/ui/VoIPActivity;->access$700(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CheckableImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setChecked(Z)V

    .line 283
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(Z)V

    goto :goto_b

    .line 281
    .end local v0    # "checked":Z
    :cond_2a
    const/4 v0, 0x0

    goto :goto_19
.end method
