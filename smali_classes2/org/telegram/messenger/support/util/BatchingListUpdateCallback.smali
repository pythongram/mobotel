.class public Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;
.super Ljava/lang/Object;
.source "BatchingListUpdateCallback.java"

# interfaces
.implements Lorg/telegram/messenger/support/util/ListUpdateCallback;


# static fields
.field private static final TYPE_ADD:I = 0x1

.field private static final TYPE_CHANGE:I = 0x3

.field private static final TYPE_NONE:I = 0x0

.field private static final TYPE_REMOVE:I = 0x2


# instance fields
.field mLastEventCount:I

.field mLastEventPayload:Ljava/lang/Object;

.field mLastEventPosition:I

.field mLastEventType:I

.field final mWrapped:Lorg/telegram/messenger/support/util/ListUpdateCallback;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/support/util/ListUpdateCallback;)V
    .registers 4
    .param p1, "callback"    # Lorg/telegram/messenger/support/util/ListUpdateCallback;

    .prologue
    const/4 v1, -0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventType:I

    .line 40
    iput v1, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 41
    iput v1, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventCount:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mWrapped:Lorg/telegram/messenger/support/util/ListUpdateCallback;

    .line 46
    return-void
.end method


# virtual methods
.method public dispatchLastEvent()V
    .registers 5

    .prologue
    .line 54
    iget v0, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventType:I

    if-nez v0, :cond_5

    .line 70
    :goto_4
    return-void

    .line 57
    :cond_5
    iget v0, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventType:I

    packed-switch v0, :pswitch_data_32

    .line 68
    :goto_a
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventType:I

    goto :goto_4

    .line 59
    :pswitch_11
    iget-object v0, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mWrapped:Lorg/telegram/messenger/support/util/ListUpdateCallback;

    iget v1, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v2, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventCount:I

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/support/util/ListUpdateCallback;->onInserted(II)V

    goto :goto_a

    .line 62
    :pswitch_1b
    iget-object v0, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mWrapped:Lorg/telegram/messenger/support/util/ListUpdateCallback;

    iget v1, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v2, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventCount:I

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/support/util/ListUpdateCallback;->onRemoved(II)V

    goto :goto_a

    .line 65
    :pswitch_25
    iget-object v0, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mWrapped:Lorg/telegram/messenger/support/util/ListUpdateCallback;

    iget v1, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v2, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventCount:I

    iget-object v3, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/messenger/support/util/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_a

    .line 57
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_11
        :pswitch_1b
        :pswitch_25
    .end packed-switch
.end method

.method public onChanged(IILjava/lang/Object;)V
    .registers 8
    .param p1, "position"    # I
    .param p2, "count"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x3

    .line 108
    iget v1, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventType:I

    if-ne v1, v3, :cond_30

    iget v1, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v2, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventCount:I

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_30

    add-int v1, p1, p2

    iget v2, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventPosition:I

    if-lt v1, v2, :cond_30

    iget-object v1, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    if-ne v1, p3, :cond_30

    .line 112
    iget v1, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v2, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventCount:I

    add-int v0, v1, v2

    .line 113
    .local v0, "previousEnd":I
    iget v1, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 114
    add-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventPosition:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventCount:I

    .line 122
    .end local v0    # "previousEnd":I
    :goto_2f
    return-void

    .line 117
    :cond_30
    invoke-virtual {p0}, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 118
    iput p1, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 119
    iput p2, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventCount:I

    .line 120
    iput-object p3, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    .line 121
    iput v3, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventType:I

    goto :goto_2f
.end method

.method public onInserted(II)V
    .registers 6
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v2, 0x1

    .line 74
    iget v0, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventType:I

    if-ne v0, v2, :cond_1e

    iget v0, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventPosition:I

    if-lt p1, v0, :cond_1e

    iget v0, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v1, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventCount:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_1e

    .line 76
    iget v0, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventCount:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventCount:I

    .line 77
    iget v0, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventPosition:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 84
    :goto_1d
    return-void

    .line 80
    :cond_1e
    invoke-virtual {p0}, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 81
    iput p1, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 82
    iput p2, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventCount:I

    .line 83
    iput v2, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventType:I

    goto :goto_1d
.end method

.method public onMoved(II)V
    .registers 4
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 103
    iget-object v0, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mWrapped:Lorg/telegram/messenger/support/util/ListUpdateCallback;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/support/util/ListUpdateCallback;->onMoved(II)V

    .line 104
    return-void
.end method

.method public onRemoved(II)V
    .registers 6
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v2, 0x2

    .line 88
    iget v0, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventType:I

    if-ne v0, v2, :cond_17

    iget v0, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventPosition:I

    if-lt v0, p1, :cond_17

    iget v0, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventPosition:I

    add-int v1, p1, p2

    if-gt v0, v1, :cond_17

    .line 90
    iget v0, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventCount:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventCount:I

    .line 91
    iput p1, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 98
    :goto_16
    return-void

    .line 94
    :cond_17
    invoke-virtual {p0}, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 95
    iput p1, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 96
    iput p2, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventCount:I

    .line 97
    iput v2, p0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->mLastEventType:I

    goto :goto_16
.end method