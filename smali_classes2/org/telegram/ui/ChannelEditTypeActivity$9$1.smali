.class Lorg/telegram/ui/ChannelEditTypeActivity$9$1;
.super Ljava/lang/Object;
.source "ChannelEditTypeActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditTypeActivity$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelEditTypeActivity$9;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditTypeActivity$9;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelEditTypeActivity$9;

    .prologue
    .line 594
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1;->this$1:Lorg/telegram/ui/ChannelEditTypeActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 4
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 597
    new-instance v0, Lorg/telegram/ui/ChannelEditTypeActivity$9$1$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/ChannelEditTypeActivity$9$1$1;-><init>(Lorg/telegram/ui/ChannelEditTypeActivity$9$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 621
    return-void
.end method
