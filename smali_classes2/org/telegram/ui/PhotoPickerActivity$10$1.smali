.class Lorg/telegram/ui/PhotoPickerActivity$10$1;
.super Ljava/lang/Object;
.source "PhotoPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerActivity$10;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoPickerActivity$10;Lorg/telegram/tgnet/TLObject;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoPickerActivity$10;

    .prologue
    .line 787
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iput-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 790
    iget-object v11, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget v11, v11, Lorg/telegram/ui/PhotoPickerActivity$10;->val$token:I

    iget-object v12, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->lastSearchToken:I
    invoke-static {v12}, Lorg/telegram/ui/PhotoPickerActivity;->access$2400(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v12

    if-eq v11, v12, :cond_11

    .line 848
    :goto_10
    return-void

    .line 793
    :cond_11
    const/4 v2, 0x0

    .line 794
    .local v2, "addedCount":I
    iget-object v11, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v11, :cond_fa

    .line 795
    const/4 v1, 0x0

    .line 796
    .local v1, "added":Z
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_messages_foundGifs;

    .line 797
    .local v7, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_foundGifs;
    iget-object v11, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v11, v11, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    iget v12, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_foundGifs;->next_offset:I

    # setter for: Lorg/telegram/ui/PhotoPickerActivity;->nextGiphySearchOffset:I
    invoke-static {v11, v12}, Lorg/telegram/ui/PhotoPickerActivity;->access$1202(Lorg/telegram/ui/PhotoPickerActivity;I)I

    .line 798
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_25
    iget-object v11, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_foundGifs;->results:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_f1

    .line 799
    iget-object v11, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_foundGifs;->results:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$FoundGif;

    .line 800
    .local v6, "gif":Lorg/telegram/tgnet/TLRPC$FoundGif;
    iget-object v11, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v11, v11, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResultKeys:Ljava/util/HashMap;
    invoke-static {v11}, Lorg/telegram/ui/PhotoPickerActivity;->access$100(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v11

    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->url:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_48

    .line 798
    :goto_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 803
    :cond_48
    const/4 v1, 0x1

    .line 804
    new-instance v5, Lorg/telegram/messenger/MediaController$SearchImage;

    invoke-direct {v5}, Lorg/telegram/messenger/MediaController$SearchImage;-><init>()V

    .line 805
    .local v5, "bingImage":Lorg/telegram/messenger/MediaController$SearchImage;
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->url:Ljava/lang/String;

    iput-object v11, v5, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    .line 806
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v11, :cond_e8

    .line 807
    const/4 v4, 0x0

    .local v4, "b":I
    :goto_57
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_7b

    .line 808
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 809
    .local v3, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v11, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-nez v11, :cond_73

    instance-of v11, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v11, :cond_e4

    .line 810
    :cond_73
    iget v11, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iput v11, v5, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    .line 811
    iget v11, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iput v11, v5, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    .line 819
    .end local v3    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v4    # "b":I
    :cond_7b
    :goto_7b
    iput v10, v5, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    .line 820
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->content_url:Ljava/lang/String;

    iput-object v11, v5, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    .line 821
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->thumb_url:Ljava/lang/String;

    iput-object v11, v5, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    .line 822
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->url:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/PhotoPickerActivity$10;->val$query:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    .line 823
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v11, v5, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 824
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v11, :cond_c6

    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v11, :cond_c6

    .line 825
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iget-object v12, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->itemWidth:I
    invoke-static {v12}, Lorg/telegram/ui/PhotoPickerActivity;->access$2500(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v12

    invoke-static {v11, v12, v9}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v8

    .line 826
    .local v8, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v8, :cond_c6

    .line 827
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v8, v11, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 830
    .end local v8    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_c6
    iput v9, v5, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    .line 831
    iget-object v11, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v11, v11, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v11}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    add-int/lit8 v2, v2, 0x1

    .line 833
    iget-object v11, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v11, v11, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResultKeys:Ljava/util/HashMap;
    invoke-static {v11}, Lorg/telegram/ui/PhotoPickerActivity;->access$100(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v11

    iget-object v12, v5, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v11, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_45

    .line 807
    .restart local v3    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v4    # "b":I
    :cond_e4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_57

    .line 816
    .end local v3    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v4    # "b":I
    :cond_e8
    iget v11, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->w:I

    iput v11, v5, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    .line 817
    iget v11, v6, Lorg/telegram/tgnet/TLRPC$FoundGif;->h:I

    iput v11, v5, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    goto :goto_7b

    .line 835
    .end local v5    # "bingImage":Lorg/telegram/messenger/MediaController$SearchImage;
    .end local v6    # "gif":Lorg/telegram/tgnet/TLRPC$FoundGif;
    :cond_f1
    iget-object v11, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v11, v11, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    if-nez v1, :cond_153

    :goto_f7
    # setter for: Lorg/telegram/ui/PhotoPickerActivity;->giphySearchEndReached:Z
    invoke-static {v11, v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$402(Lorg/telegram/ui/PhotoPickerActivity;Z)Z

    .line 837
    .end local v0    # "a":I
    .end local v1    # "added":Z
    .end local v7    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_foundGifs;
    :cond_fa
    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v9, v9, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # setter for: Lorg/telegram/ui/PhotoPickerActivity;->searching:Z
    invoke-static {v9, v10}, Lorg/telegram/ui/PhotoPickerActivity;->access$502(Lorg/telegram/ui/PhotoPickerActivity;Z)Z

    .line 838
    if-eqz v2, :cond_155

    .line 839
    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v9, v9, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;
    invoke-static {v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$2200(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v10, v10, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10, v2}, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->notifyItemRangeInserted(II)V

    .line 843
    :cond_11a
    :goto_11a
    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v9, v9, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searching:Z
    invoke-static {v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$500(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v9

    if-eqz v9, :cond_132

    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v9, v9, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_146

    :cond_132
    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v9, v9, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->loadingRecent:Z
    invoke-static {v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$2600(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v9

    if-eqz v9, :cond_179

    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v9, v9, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;
    invoke-static {v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$200(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_179

    .line 844
    :cond_146
    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v9, v9, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$900(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    goto/16 :goto_10

    .restart local v0    # "a":I
    .restart local v1    # "added":Z
    .restart local v7    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_foundGifs;
    :cond_153
    move v9, v10

    .line 835
    goto :goto_f7

    .line 840
    .end local v0    # "a":I
    .end local v1    # "added":Z
    .end local v7    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_foundGifs;
    :cond_155
    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v9, v9, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->giphySearchEndReached:Z
    invoke-static {v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$400(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v9

    if-eqz v9, :cond_11a

    .line 841
    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v9, v9, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;
    invoke-static {v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$2200(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v10, v10, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->notifyItemRemoved(I)V

    goto :goto_11a

    .line 846
    :cond_179
    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity$10$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$10;

    iget-object v9, v9, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$900(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    goto/16 :goto_10
.end method
