.class Lorg/telegram/ui/ChannelUsersActivity$6$1$2;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/tgnet/TLRPC$ChannelParticipant;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChannelUsersActivity$6$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity$6$1;)V
    .registers 2
    .param p1, "this$2"    # Lorg/telegram/ui/ChannelUsersActivity$6$1;

    .prologue
    .line 451
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1$2;->this$2:Lorg/telegram/ui/ChannelUsersActivity$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 451
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ChannelUsersActivity$6$1$2;->compare(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I
    .registers 6
    .param p1, "lhs"    # Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .param p2, "rhs"    # Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .prologue
    .line 454
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1$2;->this$2:Lorg/telegram/ui/ChannelUsersActivity$6$1;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # invokes: Lorg/telegram/ui/ChannelUsersActivity;->getChannelAdminParticipantType(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I
    invoke-static {v2, p1}, Lorg/telegram/ui/ChannelUsersActivity;->access$1000(Lorg/telegram/ui/ChannelUsersActivity;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I

    move-result v0

    .line 455
    .local v0, "type1":I
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1$2;->this$2:Lorg/telegram/ui/ChannelUsersActivity$6$1;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # invokes: Lorg/telegram/ui/ChannelUsersActivity;->getChannelAdminParticipantType(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I
    invoke-static {v2, p2}, Lorg/telegram/ui/ChannelUsersActivity;->access$1000(Lorg/telegram/ui/ChannelUsersActivity;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I

    move-result v1

    .line 456
    .local v1, "type2":I
    if-le v0, v1, :cond_18

    .line 457
    const/4 v2, 0x1

    .line 461
    :goto_17
    return v2

    .line 458
    :cond_18
    if-ge v0, v1, :cond_1c

    .line 459
    const/4 v2, -0x1

    goto :goto_17

    .line 461
    :cond_1c
    const/4 v2, 0x0

    goto :goto_17
.end method
