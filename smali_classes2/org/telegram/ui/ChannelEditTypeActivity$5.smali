.class Lorg/telegram/ui/ChannelEditTypeActivity$5;
.super Ljava/lang/Object;
.source "ChannelEditTypeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditTypeActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelEditTypeActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditTypeActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 250
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity$5;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 253
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$5;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    # getter for: Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z
    invoke-static {v0}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$500(Lorg/telegram/ui/ChannelEditTypeActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 258
    :goto_8
    return-void

    .line 256
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$5;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$502(Lorg/telegram/ui/ChannelEditTypeActivity;Z)Z

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity$5;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    # invokes: Lorg/telegram/ui/ChannelEditTypeActivity;->updatePrivatePublic()V
    invoke-static {v0}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$900(Lorg/telegram/ui/ChannelEditTypeActivity;)V

    goto :goto_8
.end method
