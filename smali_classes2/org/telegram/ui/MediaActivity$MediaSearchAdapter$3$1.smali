.class Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3$1;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;

.field final synthetic val$copy:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$2"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;

    .prologue
    .line 1960
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3$1;->this$2:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;

    iput-object p2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3$1;->val$copy:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 1963
    iget-object v13, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3$1;->this$2:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;

    iget-object v13, v13, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->val$query:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 1964
    .local v11, "search1":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_1f

    .line 1965
    iget-object v13, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3$1;->this$2:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;

    iget-object v13, v13, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    # invokes: Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;)V
    invoke-static {v13, v14}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$5800(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/util/ArrayList;)V

    .line 2022
    :goto_1e
    return-void

    .line 1968
    :cond_1f
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v13

    invoke-virtual {v13, v11}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1969
    .local v12, "search2":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_33

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_34

    .line 1970
    :cond_33
    const/4 v12, 0x0

    .line 1972
    :cond_34
    if-eqz v12, :cond_6e

    const/4 v13, 0x1

    :goto_37
    add-int/lit8 v13, v13, 0x1

    new-array v10, v13, [Ljava/lang/String;

    .line 1973
    .local v10, "search":[Ljava/lang/String;
    const/4 v13, 0x0

    aput-object v11, v10, v13

    .line 1974
    if-eqz v12, :cond_43

    .line 1975
    const/4 v13, 0x1

    aput-object v12, v10, v13

    .line 1978
    :cond_43
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1980
    .local v9, "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_49
    iget-object v13, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3$1;->val$copy:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v0, v13, :cond_db

    .line 1981
    iget-object v13, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3$1;->val$copy:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 1982
    .local v5, "messageObject":Lorg/telegram/messenger/MessageObject;
    const/4 v2, 0x0

    .local v2, "b":I
    :goto_5a
    array-length v13, v10

    if-ge v2, v13, :cond_7d

    .line 1983
    aget-object v8, v10, v2

    .line 1984
    .local v8, "q":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object v6

    .line 1985
    .local v6, "name":Ljava/lang/String;
    if-eqz v6, :cond_6b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_70

    .line 1982
    :cond_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 1972
    .end local v0    # "a":I
    .end local v2    # "b":I
    .end local v5    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "q":Ljava/lang/String;
    .end local v9    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v10    # "search":[Ljava/lang/String;
    :cond_6e
    const/4 v13, 0x0

    goto :goto_37

    .line 1988
    .restart local v0    # "a":I
    .restart local v2    # "b":I
    .restart local v5    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "q":Ljava/lang/String;
    .restart local v9    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v10    # "search":[Ljava/lang/String;
    :cond_70
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 1989
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_80

    .line 1990
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1980
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "q":Ljava/lang/String;
    :cond_7d
    :goto_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 1993
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "q":Ljava/lang/String;
    :cond_80
    iget-object v13, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3$1;->this$2:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;

    iget-object v13, v13, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    # getter for: Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I
    invoke-static {v13}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$5700(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I

    move-result v13

    const/4 v14, 0x4

    if-ne v13, v14, :cond_6b

    .line 1995
    iget v13, v5, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v13, :cond_d1

    .line 1996
    iget-object v13, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2000
    .local v4, "document":Lorg/telegram/tgnet/TLRPC$Document;
    :goto_97
    const/4 v7, 0x0

    .line 2001
    .local v7, "ok":Z
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_99
    iget-object v13, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v3, v13, :cond_cb

    .line 2002
    iget-object v13, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2003
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v13, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v13, :cond_d8

    .line 2004
    iget-object v13, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    if-eqz v13, :cond_bb

    .line 2005
    iget-object v13, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 2007
    :cond_bb
    if-nez v7, :cond_cb

    iget-object v13, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    if-eqz v13, :cond_cb

    .line 2008
    iget-object v13, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 2013
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_cb
    if-eqz v7, :cond_6b

    .line 2014
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    .line 1998
    .end local v3    # "c":I
    .end local v4    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v7    # "ok":Z
    :cond_d1
    iget-object v13, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .restart local v4    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    goto :goto_97

    .line 2001
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v3    # "c":I
    .restart local v7    # "ok":Z
    :cond_d8
    add-int/lit8 v3, v3, 0x1

    goto :goto_99

    .line 2021
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v2    # "b":I
    .end local v3    # "c":I
    .end local v4    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v5    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "ok":Z
    .end local v8    # "q":Ljava/lang/String;
    :cond_db
    iget-object v13, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3$1;->this$2:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;

    iget-object v13, v13, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    # invokes: Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;)V
    invoke-static {v13, v9}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$5800(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/util/ArrayList;)V

    goto/16 :goto_1e
.end method
