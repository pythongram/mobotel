.class Lorg/telegram/ui/ChannelCreateActivity$8;
.super Ljava/lang/Object;
.source "ChannelCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 448
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$8;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 451
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$8;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$800(Lorg/telegram/ui/ChannelCreateActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 456
    :goto_8
    return-void

    .line 454
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$8;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelCreateActivity;->access$802(Lorg/telegram/ui/ChannelCreateActivity;Z)Z

    .line 455
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$8;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # invokes: Lorg/telegram/ui/ChannelCreateActivity;->updatePrivatePublic()V
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$1800(Lorg/telegram/ui/ChannelCreateActivity;)V

    goto :goto_8
.end method
