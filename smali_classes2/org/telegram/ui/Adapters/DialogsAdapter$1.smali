.class Lorg/telegram/ui/Adapters/DialogsAdapter$1;
.super Ljava/lang/Object;
.source "DialogsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsAdapter;->sortUnread(Ljava/util/ArrayList;)V
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
        "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Adapters/DialogsAdapter;

    .prologue
    .line 134
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 134
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsAdapter$1;->compare(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$TL_dialog;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$TL_dialog;)I
    .registers 5
    .param p1, "dialog"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .param p2, "dialog2"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .prologue
    .line 137
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    iget v1, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-ne v0, v1, :cond_8

    .line 138
    const/4 v0, 0x0

    .line 142
    :goto_7
    return v0

    .line 139
    :cond_8
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    iget v1, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-ge v0, v1, :cond_10

    .line 140
    const/4 v0, 0x1

    goto :goto_7

    .line 142
    :cond_10
    const/4 v0, -0x1

    goto :goto_7
.end method
