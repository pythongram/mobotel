.class Lorg/telegram/ui/MediaActivity$SharedMediaData;
.super Ljava/lang/Object;
.source "MediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/MediaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedMediaData"
.end annotation


# instance fields
.field private endReached:[Z

.field private loading:Z

.field private max_id:[I

.field private messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private messagesDict:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private sectionArrays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/MediaActivity;

.field private totalCount:I


# direct methods
.method private constructor <init>(Lorg/telegram/ui/MediaActivity;)V
    .registers 6

    .prologue
    const/4 v3, 0x2

    .line 144
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;

    .line 146
    new-array v0, v3, [Ljava/util/HashMap;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->messagesDict:[Ljava/util/HashMap;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->sectionArrays:Ljava/util/HashMap;

    .line 151
    new-array v0, v3, [Z

    fill-array-data v0, :array_3e

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->endReached:[Z

    .line 152
    new-array v0, v3, [I

    fill-array-data v0, :array_44

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->max_id:[I

    return-void

    .line 151
    :array_3e
    .array-data 1
        0x0t
        0x1t
    .end array-data

    .line 152
    nop

    :array_44
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/MediaActivity;Lorg/telegram/ui/MediaActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p2, "x1"    # Lorg/telegram/ui/MediaActivity$1;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lorg/telegram/ui/MediaActivity$SharedMediaData;-><init>(Lorg/telegram/ui/MediaActivity;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$SharedMediaData;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->max_id:[I

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$SharedMediaData;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->endReached:[Z

    return-object v0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/MediaActivity$SharedMediaData;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$SharedMediaData;
    .param p1, "x1"    # I

    .prologue
    .line 144
    iput p1, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->totalCount:I

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$SharedMediaData;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$SharedMediaData;

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$SharedMediaData;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z

    return p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$SharedMediaData;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$SharedMediaData;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->sectionArrays:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public addMessage(Lorg/telegram/messenger/MessageObject;ZZ)Z
    .registers 12
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "isNew"    # Z
    .param p3, "enc"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dialog_id:J
    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_24

    move v0, v2

    .line 156
    .local v0, "loadIndex":I
    :goto_11
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->messagesDict:[Ljava/util/HashMap;

    aget-object v4, v4, v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 184
    :goto_23
    return v2

    .end local v0    # "loadIndex":I
    :cond_24
    move v0, v3

    .line 155
    goto :goto_11

    .line 159
    .restart local v0    # "loadIndex":I
    :cond_26
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->sectionArrays:Ljava/util/HashMap;

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 160
    .local v1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v1, :cond_47

    .line 161
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .restart local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->sectionArrays:Ljava/util/HashMap;

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    if-eqz p2, :cond_7a

    .line 164
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 169
    :cond_47
    :goto_47
    if-eqz p2, :cond_82

    .line 170
    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 171
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 176
    :goto_51
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->messagesDict:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    if-nez p3, :cond_8b

    .line 178
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    if-lez v2, :cond_78

    .line 179
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->max_id:[I

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->max_id:[I

    aget v5, v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v2, v0

    :cond_78
    :goto_78
    move v2, v3

    .line 184
    goto :goto_23

    .line 166
    :cond_7a
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 173
    :cond_82
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 182
    :cond_8b
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->max_id:[I

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->max_id:[I

    aget v5, v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v2, v0

    goto :goto_78
.end method

.method public deleteMessage(II)Z
    .registers 8
    .param p1, "mid"    # I
    .param p2, "loadIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 188
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->messagesDict:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 189
    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-nez v0, :cond_12

    .line 204
    :cond_11
    :goto_11
    return v2

    .line 192
    :cond_12
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->sectionArrays:Ljava/util/HashMap;

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 193
    .local v1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-eqz v1, :cond_11

    .line 196
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 197
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 198
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->messagesDict:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 200
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->sectionArrays:Ljava/util/HashMap;

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 203
    :cond_49
    iget v2, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->totalCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->totalCount:I

    .line 204
    const/4 v2, 0x1

    goto :goto_11
.end method

.method public replaceMid(II)V
    .registers 7
    .param p1, "oldMid"    # I
    .param p2, "newMid"    # I

    .prologue
    const/4 v3, 0x0

    .line 208
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->messagesDict:[Ljava/util/HashMap;

    aget-object v1, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 209
    .local v0, "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :cond_2b

    .line 210
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->messagesDict:[Ljava/util/HashMap;

    aget-object v1, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->messagesDict:[Ljava/util/HashMap;

    aget-object v1, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput p2, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 214
    :cond_2b
    return-void
.end method
