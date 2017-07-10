.class public Lcom/koushikdutta/async/http/body/MultipartFormDataBody;
.super Lcom/koushikdutta/async/http/server/BoundaryEmitter;
.source "MultipartFormDataBody.java"

# interfaces
.implements Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/http/server/BoundaryEmitter;",
        "Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody",
        "<",
        "Lcom/koushikdutta/async/http/Multimap;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "multipart/form-data"


# instance fields
.field contentType:Ljava/lang/String;

.field formData:Lcom/koushikdutta/async/http/Headers;

.field last:Lcom/koushikdutta/async/ByteBufferList;

.field lastName:Ljava/lang/String;

.field liner:Lcom/koushikdutta/async/LineEmitter;

.field mCallback:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;

.field private mParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/async/http/body/Part;",
            ">;"
        }
    .end annotation
.end field

.field totalToWrite:I

.field written:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;-><init>()V

    .line 102
    const-string v0, "multipart/form-data"

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->contentType:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 9
    .param p1, "values"    # [Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;-><init>()V

    .line 102
    const-string v5, "multipart/form-data"

    iput-object v5, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->contentType:Ljava/lang/String;

    .line 104
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_a
    if-ge v1, v2, :cond_2d

    aget-object v4, v0, v1

    .line 105
    .local v4, "value":Ljava/lang/String;
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "splits":[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1b

    .line 104
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 108
    :cond_1b
    const-string v5, "boundary"

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 110
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {p0, v5}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setBoundary(Ljava/lang/String;)V

    .line 114
    .end local v3    # "splits":[Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :goto_2c
    return-void

    .line 113
    :cond_2d
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "No boundary found for multipart/form-data"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->report(Ljava/lang/Exception;)V

    goto :goto_2c
.end method


# virtual methods
.method public addFilePart(Ljava/lang/String;Ljava/io/File;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 221
    new-instance v0, Lcom/koushikdutta/async/http/body/FilePart;

    invoke-direct {v0, p1, p2}, Lcom/koushikdutta/async/http/body/FilePart;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->addPart(Lcom/koushikdutta/async/http/body/Part;)V

    .line 222
    return-void
.end method

.method public addPart(Lcom/koushikdutta/async/http/body/Part;)V
    .registers 3
    .param p1, "part"    # Lcom/koushikdutta/async/http/body/Part;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mParts:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mParts:Ljava/util/ArrayList;

    .line 232
    :cond_b
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method

.method public addStringPart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 225
    new-instance v0, Lcom/koushikdutta/async/http/body/StringPart;

    invoke-direct {v0, p1, p2}, Lcom/koushikdutta/async/http/body/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->addPart(Lcom/koushikdutta/async/http/body/Part;)V

    .line 226
    return-void
.end method

.method public get()Lcom/koushikdutta/async/http/Multimap;
    .registers 3

    .prologue
    .line 237
    new-instance v0, Lcom/koushikdutta/async/http/Multimap;

    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->formData:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/Headers;->getMultiMap()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/Multimap;-><init>(Lcom/koushikdutta/async/http/Multimap;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->get()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 5

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->getBoundary()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setBoundary(Ljava/lang/String;)V

    .line 187
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->getBoundary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->formData:Lcom/koushikdutta/async/http/Headers;

    if-nez v0, :cond_6

    .line 52
    const/4 v0, 0x0

    .line 53
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->formData:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getMultipartCallback()Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mCallback:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;

    return-object v0
.end method

.method handleLast()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 38
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->last:Lcom/koushikdutta/async/ByteBufferList;

    if-nez v0, :cond_6

    .line 48
    :goto_5
    return-void

    .line 41
    :cond_6
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->formData:Lcom/koushikdutta/async/http/Headers;

    if-nez v0, :cond_11

    .line 42
    new-instance v0, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->formData:Lcom/koushikdutta/async/http/Headers;

    .line 44
    :cond_11
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->formData:Lcom/koushikdutta/async/http/Headers;

    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->lastName:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->last:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v2}, Lcom/koushikdutta/async/ByteBufferList;->peekString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/Headers;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 46
    iput-object v3, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->lastName:Ljava/lang/String;

    .line 47
    iput-object v3, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->last:Lcom/koushikdutta/async/ByteBufferList;

    goto :goto_5
.end method

.method public length()I
    .registers 11

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->getBoundary()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2c

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----------------------------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setBoundary(Ljava/lang/String;)V

    .line 202
    :cond_2c
    const/4 v1, 0x0

    .line 203
    .local v1, "length":I
    iget-object v4, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/http/body/Part;

    .line 204
    .local v2, "part":Lcom/koushikdutta/async/http/body/Part;
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/body/Part;->getRawHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v4

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->getBoundaryStart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/koushikdutta/async/http/Headers;->toPrefixString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "partHeader":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/body/Part;->length()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_57

    .line 206
    const/4 v4, -0x1

    .line 210
    .end local v2    # "part":Lcom/koushikdutta/async/http/body/Part;
    .end local v3    # "partHeader":Ljava/lang/String;
    :goto_56
    return v4

    .line 207
    .restart local v2    # "part":Lcom/koushikdutta/async/http/body/Part;
    .restart local v3    # "partHeader":Ljava/lang/String;
    :cond_57
    int-to-long v4, v1

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/body/Part;->length()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    const-string v8, "\r\n"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    long-to-int v1, v4

    .line 208
    goto :goto_33

    .line 209
    .end local v2    # "part":Lcom/koushikdutta/async/http/body/Part;
    .end local v3    # "partHeader":Ljava/lang/String;
    :cond_6e
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->getBoundaryEnd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v1, v4

    .line 210
    iput v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->totalToWrite:I

    move v4, v1

    goto :goto_56
.end method

.method protected onBoundaryEnd()V
    .registers 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->onBoundaryEnd()V

    .line 59
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->handleLast()V

    .line 60
    return-void
.end method

.method protected onBoundaryStart()V
    .registers 4

    .prologue
    .line 64
    new-instance v0, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    .line 65
    .local v0, "headers":Lcom/koushikdutta/async/http/Headers;
    new-instance v1, Lcom/koushikdutta/async/LineEmitter;

    invoke-direct {v1}, Lcom/koushikdutta/async/LineEmitter;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->liner:Lcom/koushikdutta/async/LineEmitter;

    .line 66
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->liner:Lcom/koushikdutta/async/LineEmitter;

    new-instance v2, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/http/Headers;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/LineEmitter;->setLineCallback(Lcom/koushikdutta/async/LineEmitter$StringCallback;)V

    .line 98
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->liner:Lcom/koushikdutta/async/LineEmitter;

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 99
    return-void
.end method

.method public parse(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 3
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "completed"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    .line 34
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 35
    return-void
.end method

.method public readFullyOnRequest()Z
    .registers 2

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 2
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->contentType:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setMultipartCallback(Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mCallback:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;

    .line 119
    return-void
.end method

.method public write(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 9
    .param p1, "request"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "sink"    # Lcom/koushikdutta/async/DataSink;
    .param p3, "completed"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 128
    iget-object v3, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mParts:Ljava/util/ArrayList;

    if-nez v3, :cond_5

    .line 180
    :goto_4
    return-void

    .line 131
    :cond_5
    new-instance v0, Lcom/koushikdutta/async/future/Continuation;

    new-instance v3, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$2;

    invoke-direct {v3, p0, p3}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$2;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    invoke-direct {v0, v3}, Lcom/koushikdutta/async/future/Continuation;-><init>(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 142
    .local v0, "c":Lcom/koushikdutta/async/future/Continuation;
    iget-object v3, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/http/body/Part;

    .line 143
    .local v2, "part":Lcom/koushikdutta/async/http/body/Part;
    new-instance v3, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;

    invoke-direct {v3, p0, v2, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/http/body/Part;Lcom/koushikdutta/async/DataSink;)V

    invoke-virtual {v0, v3}, Lcom/koushikdutta/async/future/Continuation;->add(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    move-result-object v3

    new-instance v4, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;

    invoke-direct {v4, p0, v2, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/http/body/Part;Lcom/koushikdutta/async/DataSink;)V

    .line 151
    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/future/Continuation;->add(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    move-result-object v3

    new-instance v4, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$3;

    invoke-direct {v4, p0, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$3;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/DataSink;)V

    .line 160
    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/future/Continuation;->add(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    goto :goto_15

    .line 169
    .end local v2    # "part":Lcom/koushikdutta/async/http/body/Part;
    :cond_3c
    new-instance v3, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;

    invoke-direct {v3, p0, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/DataSink;)V

    invoke-virtual {v0, v3}, Lcom/koushikdutta/async/future/Continuation;->add(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    .line 179
    invoke-virtual {v0}, Lcom/koushikdutta/async/future/Continuation;->start()Lcom/koushikdutta/async/future/Continuation;

    goto :goto_4
.end method
