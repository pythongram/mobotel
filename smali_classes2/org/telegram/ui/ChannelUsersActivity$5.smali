.class Lorg/telegram/ui/ChannelUsersActivity$5;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity;->didReceivedNotification(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelUsersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 353
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$5;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 356
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$5;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    const/4 v1, 0x0

    const/16 v2, 0xc8

    # invokes: Lorg/telegram/ui/ChannelUsersActivity;->getChannelParticipants(II)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$900(Lorg/telegram/ui/ChannelUsersActivity;II)V

    .line 357
    return-void
.end method
