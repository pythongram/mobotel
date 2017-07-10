.class Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$3;
.super Ljava/lang/Object;
.source "FileManagerActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    .prologue
    .line 146
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 16
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 159
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_14c

    .line 199
    const/4 v8, 0x0

    :goto_8
    return v8

    .line 161
    :pswitch_9
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->adapter:Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;
    invoke-static {v8}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->access$100(Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;)Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;

    move-result-object v8

    .line 162
    invoke-virtual {v8}, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->getSelectedIds()Landroid/util/SparseBooleanArray;

    move-result-object v5

    .line 163
    .local v5, "selected":Landroid/util/SparseBooleanArray;
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_19
    if-ltz v3, :cond_7f

    .line 164
    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 165
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->adapter:Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;
    invoke-static {v8}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->access$100(Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;)Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;

    move-result-object v8

    .line 166
    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Telehgram/cleaner/Items;

    .line 167
    .local v7, "selecteditem":Lorg/telegram/ui/Telehgram/cleaner/Items;
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->path:Ljava/lang/String;
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->access$200(Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->list:Ljava/util/ArrayList;
    invoke-static {v8}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->access$300(Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Telehgram/cleaner/Items;

    iget-object v8, v8, Lorg/telegram/ui/Telehgram/cleaner/Items;->name:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v2, "ff":Ljava/io/File;
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    invoke-virtual {v8, v2}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->DeleteRecursive(Ljava/io/File;)V

    .line 169
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->adapter:Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;
    invoke-static {v8}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->access$100(Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;)Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->notifyDataSetChanged()V

    .line 170
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->adapter:Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;
    invoke-static {v8}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->access$100(Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;)Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->remove(Lorg/telegram/ui/Telehgram/cleaner/Items;)V

    .line 163
    .end local v2    # "ff":Ljava/io/File;
    .end local v7    # "selecteditem":Lorg/telegram/ui/Telehgram/cleaner/Items;
    :cond_7c
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 173
    :cond_7f
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 174
    const/4 v8, 0x1

    goto :goto_8

    .line 176
    .end local v3    # "i":I
    .end local v5    # "selected":Landroid/util/SparseBooleanArray;
    :pswitch_84
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->adapter:Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;
    invoke-static {v8}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->access$100(Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;)Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;

    move-result-object v8

    .line 177
    invoke-virtual {v8}, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->getSelectedIds()Landroid/util/SparseBooleanArray;

    move-result-object v6

    .line 178
    .local v6, "selected2":Landroid/util/SparseBooleanArray;
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .restart local v3    # "i":I
    :goto_94
    if-ltz v3, :cond_145

    .line 179
    invoke-virtual {v6, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_119

    .line 180
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->adapter:Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;
    invoke-static {v8}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->access$100(Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;)Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;

    move-result-object v8

    .line 181
    invoke-virtual {v6, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Telehgram/cleaner/Items;

    .line 182
    .restart local v7    # "selecteditem":Lorg/telegram/ui/Telehgram/cleaner/Items;
    iget-object v9, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->path:Ljava/lang/String;
    invoke-static {v10}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->access$200(Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v8, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->list:Ljava/util/ArrayList;
    invoke-static {v8}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->access$300(Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v6, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Telehgram/cleaner/Items;

    iget-object v8, v8, Lorg/telegram/ui/Telehgram/cleaner/Items;->name:Ljava/lang/String;

    iget-object v11, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->outputpath:Ljava/lang/String;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->access$400(Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;)Ljava/lang/String;

    move-result-object v11

    # invokes: Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v9, v10, v8, v11}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->access$500(Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x13

    if-lt v8, v9, :cond_11d

    .line 185
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v4, "mediaScanIntent":Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 188
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 189
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    invoke-virtual {v8, v4}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 178
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "f":Ljava/io/File;
    .end local v4    # "mediaScanIntent":Landroid/content/Intent;
    .end local v7    # "selecteditem":Lorg/telegram/ui/Telehgram/cleaner/Items;
    :cond_119
    :goto_119
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_94

    .line 191
    .restart local v7    # "selecteditem":Lorg/telegram/ui/Telehgram/cleaner/Items;
    :cond_11d
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MEDIA_MOUNTED"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_119

    .line 195
    .end local v7    # "selecteditem":Lorg/telegram/ui/Telehgram/cleaner/Items;
    :cond_145
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 196
    const/4 v8, 0x1

    goto/16 :goto_8

    .line 159
    nop

    :pswitch_data_14c
    .packed-switch 0x7f0e0141
        :pswitch_9
        :pswitch_84
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 212
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->adapter:Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->access$100(Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;)Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->removeSelection()V

    .line 213
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .registers 9
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->listView:Landroid/widget/GridView;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->access$000(Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getCheckedItemCount()I

    move-result v0

    .line 153
    .local v0, "checkedCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0627\u0646\u062a\u062e\u0627\u0628 \u0634\u062f\u0647 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->adapter:Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->access$100(Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;)Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->toggleSelection(I)V

    .line 155
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method
