.class Lorg/telegram/ui/ChannelEditTypeActivity$2;
.super Ljava/lang/Object;
.source "ChannelEditTypeActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditTypeActivity;->onFragmentCreate()Z
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
    .line 131
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity$2;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 4
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 134
    new-instance v0, Lorg/telegram/ui/ChannelEditTypeActivity$2$1;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/ChannelEditTypeActivity$2$1;-><init>(Lorg/telegram/ui/ChannelEditTypeActivity$2;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method
