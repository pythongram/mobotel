.class Lorg/telegram/ui/ChannelCreateActivity$5;
.super Ljava/lang/Object;
.source "ChannelCreateActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelCreateActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelCreateActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelCreateActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 386
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$5;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 389
    const/4 v0, 0x6

    if-ne p2, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$5;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->doneButton:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$1700(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$5;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->doneButton:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$1700(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 391
    const/4 v0, 0x1

    .line 393
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
