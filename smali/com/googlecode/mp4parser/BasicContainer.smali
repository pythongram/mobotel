.class public Lcom/googlecode/mp4parser/BasicContainer;
.super Ljava/lang/Object;
.source "BasicContainer.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/Container;
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coremedia/iso/boxes/Container;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/coremedia/iso/boxes/Box;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field private static final EOF:Lcom/coremedia/iso/boxes/Box;

.field private static LOG:Lcom/googlecode/mp4parser/util/Logger;


# instance fields
.field protected boxParser:Lcom/coremedia/iso/BoxParser;

.field private boxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;"
        }
    .end annotation
.end field

.field protected dataSource:Lcom/googlecode/mp4parser/DataSource;

.field endPosition:J

.field lookahead:Lcom/coremedia/iso/boxes/Box;

.field parsePosition:J

.field startPosition:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    new-instance v0, Lcom/googlecode/mp4parser/BasicContainer$1;

    const-string v1, "eof "

    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/BasicContainer$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/googlecode/mp4parser/BasicContainer;->EOF:Lcom/coremedia/iso/boxes/Box;

    .line 39
    const-class v0, Lcom/googlecode/mp4parser/BasicContainer;

    invoke-static {v0}, Lcom/googlecode/mp4parser/util/Logger;->getLogger(Ljava/lang/Class;)Lcom/googlecode/mp4parser/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/BasicContainer;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->lookahead:Lcom/coremedia/iso/boxes/Box;

    .line 43
    iput-wide v2, p0, Lcom/googlecode/mp4parser/BasicContainer;->parsePosition:J

    .line 44
    iput-wide v2, p0, Lcom/googlecode/mp4parser/BasicContainer;->startPosition:J

    .line 45
    iput-wide v2, p0, Lcom/googlecode/mp4parser/BasicContainer;->endPosition:J

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->boxes:Ljava/util/List;

    .line 49
    return-void
.end method


# virtual methods
.method public addBox(Lcom/coremedia/iso/boxes/Box;)V
    .registers 4
    .param p1, "box"    # Lcom/coremedia/iso/boxes/Box;

    .prologue
    .line 133
    if-eqz p1, :cond_15

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/BasicContainer;->getBoxes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->boxes:Ljava/util/List;

    .line 135
    invoke-interface {p1, p0}, Lcom/coremedia/iso/boxes/Box;->setParent(Lcom/coremedia/iso/boxes/Container;)V

    .line 136
    iget-object v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->boxes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_15
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/DataSource;->close()V

    .line 262
    return-void
.end method

.method public getBoxes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->lookahead:Lcom/coremedia/iso/boxes/Box;

    sget-object v1, Lcom/googlecode/mp4parser/BasicContainer;->EOF:Lcom/coremedia/iso/boxes/Box;

    if-eq v0, v1, :cond_12

    .line 53
    new-instance v0, Lcom/googlecode/mp4parser/util/LazyList;

    iget-object v1, p0, Lcom/googlecode/mp4parser/BasicContainer;->boxes:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lcom/googlecode/mp4parser/util/LazyList;-><init>(Ljava/util/List;Ljava/util/Iterator;)V

    .line 55
    :goto_11
    return-object v0

    :cond_12
    iget-object v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->boxes:Ljava/util/List;

    goto :goto_11
.end method

.method public getBoxes(Ljava/lang/Class;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/coremedia/iso/boxes/Box;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 78
    .local v2, "boxesToBeReturned":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v4, 0x0

    .line 79
    .local v4, "oneBox":Lcom/coremedia/iso/boxes/Box;, "TT;"
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/BasicContainer;->getBoxes()Ljava/util/List;

    move-result-object v1

    .line 80
    .local v1, "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_10

    .line 97
    if-eqz v2, :cond_31

    .line 102
    .end local v2    # "boxesToBeReturned":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_f
    return-object v2

    .line 81
    .restart local v2    # "boxesToBeReturned":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_10
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 85
    .local v0, "boxe":Lcom/coremedia/iso/boxes/Box;
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 86
    if-nez v4, :cond_22

    .line 87
    move-object v4, v0

    .line 80
    :cond_1f
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 89
    :cond_22
    if-nez v2, :cond_2d

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "boxesToBeReturned":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v5, 0x2

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .restart local v2    # "boxesToBeReturned":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_2d
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 99
    .end local v0    # "boxe":Lcom/coremedia/iso/boxes/Box;
    :cond_31
    if-eqz v4, :cond_38

    .line 100
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_f

    .line 102
    :cond_38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_f
.end method

.method public getBoxes(Ljava/lang/Class;Z)Ljava/util/List;
    .registers 8
    .param p2, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/coremedia/iso/boxes/Box;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;Z)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    .local v2, "boxesToBeReturned":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/BasicContainer;->getBoxes()Ljava/util/List;

    move-result-object v1

    .line 110
    .local v1, "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_12

    .line 123
    return-object v2

    .line 111
    :cond_12
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 115
    .local v0, "boxe":Lcom/coremedia/iso/boxes/Box;
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 116
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_21
    if-eqz p2, :cond_30

    instance-of v4, v0, Lcom/coremedia/iso/boxes/Container;

    if-eqz v4, :cond_30

    .line 120
    check-cast v0, Lcom/coremedia/iso/boxes/Container;

    .end local v0    # "boxe":Lcom/coremedia/iso/boxes/Box;
    invoke-interface {v0, p1, p2}, Lcom/coremedia/iso/boxes/Container;->getBoxes(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_b
.end method

.method public getByteBuffer(JJ)Ljava/nio/ByteBuffer;
    .registers 26
    .param p1, "rangeStart"    # J
    .param p3, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/googlecode/mp4parser/BasicContainer;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    if-eqz v15, :cond_26

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/BasicContainer;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 223
    :try_start_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/googlecode/mp4parser/BasicContainer;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/mp4parser/BasicContainer;->startPosition:J

    move-wide/from16 v18, v0

    add-long v18, v18, p1

    move-wide/from16 v0, v18

    move-wide/from16 v2, p3

    invoke-interface {v15, v0, v1, v2, v3}, Lcom/googlecode/mp4parser/DataSource;->map(JJ)Ljava/nio/ByteBuffer;

    move-result-object v15

    monitor-exit v16

    .line 256
    :goto_22
    return-object v15

    .line 222
    :catchall_23
    move-exception v15

    monitor-exit v16
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_23

    throw v15

    .line 226
    :cond_26
    invoke-static/range {p3 .. p4}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v15

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 227
    .local v11, "out":Ljava/nio/ByteBuffer;
    add-long v12, p1, p3

    .line 229
    .local v12, "rangeEnd":J
    const-wide/16 v6, 0x0

    .line 230
    .local v6, "boxEnd":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/googlecode/mp4parser/BasicContainer;->boxes:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_3a
    :goto_3a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_47

    .line 256
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    goto :goto_22

    .line 230
    :cond_47
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/Box;

    .line 231
    .local v5, "box":Lcom/coremedia/iso/boxes/Box;
    move-wide v8, v6

    .line 232
    .local v8, "boxStart":J
    invoke-interface {v5}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v16

    add-long v6, v8, v16

    .line 233
    cmp-long v16, v6, p1

    if-lez v16, :cond_3a

    cmp-long v16, v8, v12

    if-gez v16, :cond_3a

    .line 234
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 235
    .local v4, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {v4}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v14

    .line 236
    .local v14, "wbc":Ljava/nio/channels/WritableByteChannel;
    invoke-interface {v5, v14}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 237
    invoke-interface {v14}, Ljava/nio/channels/WritableByteChannel;->close()V

    .line 239
    cmp-long v16, v8, p1

    if-ltz v16, :cond_7d

    cmp-long v16, v6, v12

    if-gtz v16, :cond_7d

    .line 240
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_3a

    .line 242
    :cond_7d
    cmp-long v16, v8, p1

    if-gez v16, :cond_a7

    cmp-long v16, v6, v12

    if-lez v16, :cond_a7

    .line 244
    invoke-interface {v5}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v16

    sub-long v18, p1, v8

    sub-long v16, v16, v18

    sub-long v18, v6, v12

    sub-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v10

    .line 245
    .local v10, "length":I
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    sub-long v18, p1, v8

    invoke-static/range {v18 .. v19}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_3a

    .line 246
    .end local v10    # "length":I
    :cond_a7
    cmp-long v16, v8, p1

    if-gez v16, :cond_ce

    cmp-long v16, v6, v12

    if-gtz v16, :cond_ce

    .line 248
    invoke-interface {v5}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v16

    sub-long v18, p1, v8

    sub-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v10

    .line 249
    .restart local v10    # "length":I
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    sub-long v18, p1, v8

    invoke-static/range {v18 .. v19}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto/16 :goto_3a

    .line 250
    .end local v10    # "length":I
    :cond_ce
    cmp-long v16, v8, p1

    if-ltz v16, :cond_3a

    cmp-long v16, v6, v12

    if-lez v16, :cond_3a

    .line 251
    invoke-interface {v5}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v16

    sub-long v18, v6, v12

    sub-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v10

    .line 252
    .restart local v10    # "length":I
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto/16 :goto_3a
.end method

.method protected getContainerSize()J
    .registers 7

    .prologue
    .line 66
    const-wide/16 v0, 0x0

    .line 67
    .local v0, "contentSize":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/BasicContainer;->getBoxes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_e

    .line 72
    return-wide v0

    .line 70
    :cond_e
    iget-object v3, p0, Lcom/googlecode/mp4parser/BasicContainer;->boxes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/Box;

    invoke-interface {v3}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public hasNext()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 154
    iget-object v2, p0, Lcom/googlecode/mp4parser/BasicContainer;->lookahead:Lcom/coremedia/iso/boxes/Box;

    sget-object v3, Lcom/googlecode/mp4parser/BasicContainer;->EOF:Lcom/coremedia/iso/boxes/Box;

    if-ne v2, v3, :cond_9

    .line 165
    :goto_8
    return v0

    .line 157
    :cond_9
    iget-object v2, p0, Lcom/googlecode/mp4parser/BasicContainer;->lookahead:Lcom/coremedia/iso/boxes/Box;

    if-eqz v2, :cond_f

    move v0, v1

    .line 158
    goto :goto_8

    .line 161
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/BasicContainer;->next()Lcom/coremedia/iso/boxes/Box;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/mp4parser/BasicContainer;->lookahead:Lcom/coremedia/iso/boxes/Box;
    :try_end_15
    .catch Ljava/util/NoSuchElementException; {:try_start_f .. :try_end_15} :catch_17

    move v0, v1

    .line 162
    goto :goto_8

    .line 164
    :catch_17
    move-exception v1

    sget-object v1, Lcom/googlecode/mp4parser/BasicContainer;->EOF:Lcom/coremedia/iso/boxes/Box;

    iput-object v1, p0, Lcom/googlecode/mp4parser/BasicContainer;->lookahead:Lcom/coremedia/iso/boxes/Box;

    goto :goto_8
.end method

.method public initContainer(Lcom/googlecode/mp4parser/DataSource;JLcom/coremedia/iso/BoxParser;)V
    .registers 7
    .param p1, "dataSource"    # Lcom/googlecode/mp4parser/DataSource;
    .param p2, "containerSize"    # J
    .param p4, "boxParser"    # Lcom/coremedia/iso/BoxParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iput-object p1, p0, Lcom/googlecode/mp4parser/BasicContainer;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    .line 143
    invoke-interface {p1}, Lcom/googlecode/mp4parser/DataSource;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->startPosition:J

    iput-wide v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->parsePosition:J

    .line 144
    invoke-interface {p1}, Lcom/googlecode/mp4parser/DataSource;->position()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/googlecode/mp4parser/DataSource;->position(J)V

    .line 145
    invoke-interface {p1}, Lcom/googlecode/mp4parser/DataSource;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->endPosition:J

    .line 146
    iput-object p4, p0, Lcom/googlecode/mp4parser/BasicContainer;->boxParser:Lcom/coremedia/iso/BoxParser;

    .line 147
    return-void
.end method

.method public next()Lcom/coremedia/iso/boxes/Box;
    .registers 7

    .prologue
    .line 171
    iget-object v1, p0, Lcom/googlecode/mp4parser/BasicContainer;->lookahead:Lcom/coremedia/iso/boxes/Box;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/googlecode/mp4parser/BasicContainer;->lookahead:Lcom/coremedia/iso/boxes/Box;

    sget-object v2, Lcom/googlecode/mp4parser/BasicContainer;->EOF:Lcom/coremedia/iso/boxes/Box;

    if-eq v1, v2, :cond_10

    .line 172
    iget-object v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->lookahead:Lcom/coremedia/iso/boxes/Box;

    .line 173
    .local v0, "b":Lcom/coremedia/iso/boxes/Box;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/googlecode/mp4parser/BasicContainer;->lookahead:Lcom/coremedia/iso/boxes/Box;

    .line 188
    :goto_f
    return-object v0

    .line 177
    .end local v0    # "b":Lcom/coremedia/iso/boxes/Box;
    :cond_10
    iget-object v1, p0, Lcom/googlecode/mp4parser/BasicContainer;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    if-eqz v1, :cond_1c

    iget-wide v2, p0, Lcom/googlecode/mp4parser/BasicContainer;->parsePosition:J

    iget-wide v4, p0, Lcom/googlecode/mp4parser/BasicContainer;->endPosition:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_26

    .line 178
    :cond_1c
    sget-object v1, Lcom/googlecode/mp4parser/BasicContainer;->EOF:Lcom/coremedia/iso/boxes/Box;

    iput-object v1, p0, Lcom/googlecode/mp4parser/BasicContainer;->lookahead:Lcom/coremedia/iso/boxes/Box;

    .line 179
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 183
    :cond_26
    :try_start_26
    iget-object v2, p0, Lcom/googlecode/mp4parser/BasicContainer;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    monitor-enter v2
    :try_end_29
    .catch Ljava/io/EOFException; {:try_start_26 .. :try_end_29} :catch_45
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_4c

    .line 184
    :try_start_29
    iget-object v1, p0, Lcom/googlecode/mp4parser/BasicContainer;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    iget-wide v4, p0, Lcom/googlecode/mp4parser/BasicContainer;->parsePosition:J

    invoke-interface {v1, v4, v5}, Lcom/googlecode/mp4parser/DataSource;->position(J)V

    .line 185
    iget-object v1, p0, Lcom/googlecode/mp4parser/BasicContainer;->boxParser:Lcom/coremedia/iso/BoxParser;

    iget-object v3, p0, Lcom/googlecode/mp4parser/BasicContainer;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v1, v3, p0}, Lcom/coremedia/iso/BoxParser;->parseBox(Lcom/googlecode/mp4parser/DataSource;Lcom/coremedia/iso/boxes/Container;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v0

    .line 187
    .restart local v0    # "b":Lcom/coremedia/iso/boxes/Box;
    iget-object v1, p0, Lcom/googlecode/mp4parser/BasicContainer;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v1}, Lcom/googlecode/mp4parser/DataSource;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/googlecode/mp4parser/BasicContainer;->parsePosition:J

    .line 188
    monitor-exit v2

    goto :goto_f

    .line 183
    .end local v0    # "b":Lcom/coremedia/iso/boxes/Box;
    :catchall_42
    move-exception v1

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_42

    :try_start_44
    throw v1
    :try_end_45
    .catch Ljava/io/EOFException; {:try_start_44 .. :try_end_45} :catch_45
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_45} :catch_4c

    .line 191
    :catch_45
    move-exception v1

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 193
    :catch_4c
    move-exception v1

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/BasicContainer;->next()Lcom/coremedia/iso/boxes/Box;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setBoxes(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->boxes:Ljava/util/List;

    .line 61
    sget-object v0, Lcom/googlecode/mp4parser/BasicContainer;->EOF:Lcom/coremedia/iso/boxes/Box;

    iput-object v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->lookahead:Lcom/coremedia/iso/boxes/Box;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/mp4parser/BasicContainer;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    iget-object v2, p0, Lcom/googlecode/mp4parser/BasicContainer;->boxes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_29

    .line 209
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 204
    :cond_29
    if-lez v1, :cond_30

    .line 205
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_30
    iget-object v2, p0, Lcom/googlecode/mp4parser/BasicContainer;->boxes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/Box;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method

.method public final writeContainer(Ljava/nio/channels/WritableByteChannel;)V
    .registers 5
    .param p1, "bb"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/BasicContainer;->getBoxes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_f

    .line 218
    return-void

    .line 215
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 216
    .local v0, "box":Lcom/coremedia/iso/boxes/Box;
    invoke-interface {v0, p1}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    goto :goto_8
.end method
