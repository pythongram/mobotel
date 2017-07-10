.class Lorg/telegram/ui/ChannelCreateActivity$9;
.super Ljava/lang/Object;
.source "ChannelCreateActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 503
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$9;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 517
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 507
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 511
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$9;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$9;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/telegram/ui/ChannelCreateActivity;->access$300(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lorg/telegram/ui/ChannelCreateActivity;->checkUserName(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelCreateActivity;->access$1900(Lorg/telegram/ui/ChannelCreateActivity;Ljava/lang/String;)Z

    .line 512
    return-void
.end method
