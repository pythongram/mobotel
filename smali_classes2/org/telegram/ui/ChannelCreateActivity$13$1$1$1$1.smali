.class Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1$1;
.super Ljava/lang/Object;
.source "ChannelCreateActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1;)V
    .registers 2
    .param p1, "this$4"    # Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1;

    .prologue
    .line 779
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1$1;->this$4:Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 4
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 782
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz v0, :cond_c

    .line 783
    new-instance v0, Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1$1$1;-><init>(Lorg/telegram/ui/ChannelCreateActivity$13$1$1$1$1;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 794
    :cond_c
    return-void
.end method
