.class Landroid/support/v7/widget/ActivityChooserModel;
.super Landroid/database/DataSetObservable;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;,
        Landroid/support/v7/widget/ActivityChooserModel$DefaultSorter;,
        Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;,
        Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;,
        Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;,
        Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;,
        Landroid/support/v7/widget/ActivityChooserModel$ActivityChooserModelClient;
    }
.end annotation


# static fields
.field static final ATTRIBUTE_ACTIVITY:Ljava/lang/String; = "activity"

.field static final ATTRIBUTE_TIME:Ljava/lang/String; = "time"

.field static final ATTRIBUTE_WEIGHT:Ljava/lang/String; = "weight"

.field static final DEBUG:Z = false

.field private static final DEFAULT_ACTIVITY_INFLATION:I = 0x5

.field private static final DEFAULT_HISTORICAL_RECORD_WEIGHT:F = 1.0f

.field public static final DEFAULT_HISTORY_FILE_NAME:Ljava/lang/String; = "activity_choser_model_history.xml"

.field public static final DEFAULT_HISTORY_MAX_LENGTH:I = 0x32

.field private static final HISTORY_FILE_EXTENSION:Ljava/lang/String; = ".xml"

.field private static final INVALID_INDEX:I = -0x1

.field static final LOG_TAG:Ljava/lang/String;

.field static final TAG_HISTORICAL_RECORD:Ljava/lang/String; = "historical-record"

.field static final TAG_HISTORICAL_RECORDS:Ljava/lang/String; = "historical-records"

.field private static final sDataModelRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/support/v7/widget/ActivityChooserModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistryLock:Ljava/lang/Object;


# instance fields
.field private final mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityChoserModelPolicy:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

.field private mActivitySorter:Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;

.field mCanReadHistoricalData:Z

.field final mContext:Landroid/content/Context;

.field private final mHistoricalRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoricalRecordsChanged:Z

.field final mHistoryFileName:Ljava/lang/String;

.field private mHistoryMaxSize:I

.field private final mInstanceLock:Ljava/lang/Object;

.field private mIntent:Landroid/content/Intent;

.field private mReadShareHistoryCalled:Z

.field private mReloadActivities:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 157
    const-class v0, Landroid/support/v7/widget/ActivityChooserModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    .line 218
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "historyFileName"    # Ljava/lang/String;

    .line 346
    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    .line 229
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 259
    new-instance v0, Landroid/support/v7/widget/ActivityChooserModel$DefaultSorter;

    invoke-direct {v0}, Landroid/support/v7/widget/ActivityChooserModel$DefaultSorter;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivitySorter:Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;

    .line 264
    const/16 v0, 0x32

    iput v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryMaxSize:I

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 285
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 293
    iput-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 298
    iput-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mReloadActivities:Z

    .line 347
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    .line 348
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".xml"

    .line 349
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    goto :goto_0

    .line 352
    :cond_0
    iput-object p2, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    .line 354
    :goto_0
    return-void
.end method

.method private addHistoricalRecord(Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;)Z
    .locals 2
    .param p1, "historicalRecord"    # Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    .line 727
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 728
    .local v0, "added":Z
    if-eqz v0, :cond_0

    .line 729
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 730
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 731
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->persistHistoricalDataIfNeeded()V

    .line 732
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    .line 733
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserModel;->notifyChanged()V

    .line 735
    :cond_0
    return v0
.end method

.method private ensureConsistentState()V
    .locals 2

    .line 654
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->loadActivitiesIfNeeded()Z

    move-result v0

    .line 655
    .local v0, "stateChanged":Z
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->readHistoricalDataIfNeeded()Z

    move-result v1

    or-int/2addr v0, v1

    .line 656
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 657
    if-eqz v0, :cond_0

    .line 658
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    .line 659
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserModel;->notifyChanged()V

    .line 661
    :cond_0
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/widget/ActivityChooserModel;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "historyFileName"    # Ljava/lang/String;

    .line 330
    sget-object v0, Landroid/support/v7/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_0
    sget-object v1, Landroid/support/v7/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ActivityChooserModel;

    .line 332
    .local v1, "dataModel":Landroid/support/v7/widget/ActivityChooserModel;
    if-nez v1, :cond_0

    .line 333
    new-instance v2, Landroid/support/v7/widget/ActivityChooserModel;

    invoke-direct {v2, p0, p1}, Landroid/support/v7/widget/ActivityChooserModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v1, v2

    .line 334
    sget-object v2, Landroid/support/v7/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_0
    monitor-exit v0

    return-object v1

    .line 337
    .end local v1    # "dataModel":Landroid/support/v7/widget/ActivityChooserModel;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadActivitiesIfNeeded()Z
    .locals 6

    .line 687
    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mReloadActivities:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 688
    iput-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mReloadActivities:Z

    .line 689
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 690
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    .line 691
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 692
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 693
    .local v2, "resolveInfoCount":I
    nop

    .line 693
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 694
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 695
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    new-instance v5, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    invoke-direct {v5, v3}, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 697
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 699
    .end local v0    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "resolveInfoCount":I
    :cond_1
    return v1
.end method

.method private persistHistoricalDataIfNeeded()V
    .locals 6

    .line 566
    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    if-nez v0, :cond_0

    .line 567
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No preceding call to #readHistoricalData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-nez v0, :cond_1

    .line 570
    return-void

    .line 572
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 573
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 574
    new-instance v1, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroid/support/v7/widget/ActivityChooserModel;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget-object v4, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 577
    :cond_2
    return-void
.end method

.method private pruneExcessiveHistoricalRecordsIfNeeded()V
    .locals 4

    .line 742
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryMaxSize:I

    sub-int/2addr v0, v1

    .line 743
    .local v0, "pruneCount":I
    if-gtz v0, :cond_0

    .line 744
    return-void

    .line 746
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 747
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 747
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 748
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    .line 747
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 753
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private readHistoricalDataIfNeeded()Z
    .locals 2

    .line 710
    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    .line 711
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 712
    iput-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 713
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 714
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->readHistoricalDataImpl()V

    .line 715
    return v0

    .line 717
    :cond_0
    return v1
.end method

.method private readHistoricalDataImpl()V
    .locals 12

    .line 964
    const/4 v0, 0x0

    move-object v1, v0

    .line 966
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v1, v2

    .line 972
    nop

    .line 974
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 975
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v3, "UTF-8"

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 977
    const/4 v3, 0x0

    .line 978
    .local v3, "type":I
    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    .line 979
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v3, v4

    goto :goto_0

    .line 982
    :cond_0
    const-string v5, "historical-records"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 983
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Share records file does not start with historical-records tag."

    invoke-direct {v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 987
    :cond_1
    iget-object v5, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 988
    .local v5, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;>;"
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 991
    :cond_2
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v6

    .line 992
    if-ne v3, v4, :cond_3

    .line 993
    nop

    .line 1024
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "type":I
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;>;"
    if-eqz v1, :cond_6

    .line 1026
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 995
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "type":I
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;>;"
    :cond_3
    const/4 v6, 0x3

    if-eq v3, v6, :cond_2

    const/4 v6, 0x4

    if-ne v3, v6, :cond_4

    .line 996
    goto :goto_1

    .line 998
    :cond_4
    :try_start_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 999
    .local v6, "nodeName":Ljava/lang/String;
    const-string v7, "historical-record"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1000
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Share records file not well-formed."

    invoke-direct {v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1003
    :cond_5
    const-string v7, "activity"

    invoke-interface {v2, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1004
    .local v7, "activity":Ljava/lang/String;
    const-string v8, "time"

    .line 1005
    invoke-interface {v2, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1006
    .local v8, "time":J
    const-string v10, "weight"

    .line 1007
    invoke-interface {v2, v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 1008
    .local v10, "weight":F
    new-instance v11, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    invoke-direct {v11, v7, v8, v9, v10}, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;-><init>(Ljava/lang/String;JF)V

    .line 1009
    .local v11, "readRecord":Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1014
    .end local v6    # "nodeName":Ljava/lang/String;
    .end local v7    # "activity":Ljava/lang/String;
    .end local v8    # "time":J
    .end local v10    # "weight":F
    .end local v11    # "readRecord":Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
    goto :goto_1

    .line 1024
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "type":I
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;>;"
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 1021
    :catch_0
    move-exception v0

    .line 1022
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_4
    sget-object v2, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading historical recrod file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1024
    .end local v0    # "ioe":Ljava/io/IOException;
    if-eqz v1, :cond_6

    .line 1026
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 1019
    :catch_1
    move-exception v0

    .line 1020
    .local v0, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    sget-object v2, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading historical recrod file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1024
    .end local v0    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v1, :cond_6

    .line 1026
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1029
    :goto_2
    goto :goto_3

    .line 1027
    :catch_2
    move-exception v0

    goto :goto_2

    .line 1032
    :cond_6
    :goto_3
    return-void

    .line 1024
    :goto_4
    if-eqz v1, :cond_7

    .line 1026
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 1029
    goto :goto_5

    .line 1027
    :catch_3
    move-exception v2

    .line 1029
    :cond_7
    :goto_5
    throw v0

    .line 967
    :catch_4
    move-exception v0

    .line 971
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    return-void
.end method

.method private sortActivitiesIfNeeded()Z
    .locals 4

    .line 671
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivitySorter:Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    .line 672
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivitySorter:Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 674
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 673
    invoke-interface {v0, v1, v2, v3}, Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;->sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 675
    const/4 v0, 0x1

    return v0

    .line 677
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public chooseActivity(I)Landroid/content/Intent;
    .locals 8
    .param p1, "index"    # I

    .line 457
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 458
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 459
    monitor-exit v0

    return-object v2

    .line 462
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 464
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 466
    .local v1, "chosenActivity":Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .local v3, "chosenName":Landroid/content/ComponentName;
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 471
    .local v4, "choiceIntent":Landroid/content/Intent;
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 473
    iget-object v5, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

    if-eqz v5, :cond_1

    .line 475
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 476
    .local v5, "choiceIntentCopy":Landroid/content/Intent;
    iget-object v6, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

    invoke-interface {v6, p0, v5}, Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;->onChooseActivity(Landroid/support/v7/widget/ActivityChooserModel;Landroid/content/Intent;)Z

    move-result v6

    .line 478
    .local v6, "handled":Z
    if-eqz v6, :cond_1

    .line 479
    monitor-exit v0

    return-object v2

    .line 483
    .end local v5    # "choiceIntentCopy":Landroid/content/Intent;
    .end local v6    # "handled":Z
    :cond_1
    new-instance v2, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v5, v6, v7}, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 485
    .local v2, "historicalRecord":Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
    invoke-direct {p0, v2}, Landroid/support/v7/widget/ActivityChooserModel;->addHistoricalRecord(Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;)Z

    .line 487
    monitor-exit v0

    return-object v4

    .line 488
    .end local v1    # "chosenActivity":Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v2    # "historicalRecord":Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
    .end local v3    # "chosenName":Landroid/content/ComponentName;
    .end local v4    # "choiceIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getActivity(I)Landroid/content/pm/ResolveInfo;
    .locals 2
    .param p1, "index"    # I

    .line 410
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 411
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 412
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v0

    return-object v1

    .line 413
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getActivityCount()I
    .locals 2

    .line 395
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 396
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 397
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 398
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getActivityIndex(Landroid/content/pm/ResolveInfo;)I
    .locals 6
    .param p1, "activity"    # Landroid/content/pm/ResolveInfo;

    .line 424
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 425
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 426
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    .line 427
    .local v1, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 428
    .local v2, "activityCount":I
    const/4 v3, 0x0

    .line 428
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 429
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 430
    .local v4, "currentActivity":Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;
    iget-object v5, v4, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-ne v5, p1, :cond_0

    .line 431
    monitor-exit v0

    return v3

    .line 428
    .end local v4    # "currentActivity":Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 434
    .end local v3    # "i":I
    :cond_1
    const/4 v3, -0x1

    monitor-exit v0

    return v3

    .line 435
    .end local v1    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    .end local v2    # "activityCount":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .locals 3

    .line 512
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 513
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 514
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 515
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v0

    return-object v1

    .line 517
    :cond_0
    monitor-exit v0

    .line 518
    const/4 v0, 0x0

    return-object v0

    .line 517
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHistoryMaxSize()I
    .locals 2

    .line 630
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 631
    :try_start_0
    iget v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryMaxSize:I

    monitor-exit v0

    return v1

    .line 632
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHistorySize()I
    .locals 2

    .line 641
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 642
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 643
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 644
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 382
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 383
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    monitor-exit v0

    return-object v1

    .line 384
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setActivitySorter(Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;)V
    .locals 2
    .param p1, "activitySorter"    # Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;

    .line 587
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 588
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivitySorter:Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;

    if-ne v1, p1, :cond_0

    .line 589
    monitor-exit v0

    return-void

    .line 591
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivitySorter:Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;

    .line 592
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 593
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserModel;->notifyChanged()V

    .line 595
    :cond_1
    monitor-exit v0

    .line 596
    return-void

    .line 595
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDefaultActivity(I)V
    .locals 8
    .param p1, "index"    # I

    .line 532
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 535
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 536
    .local v1, "newDefaultActivity":Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;
    iget-object v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 539
    .local v2, "oldDefaultActivity":Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;
    if-eqz v2, :cond_0

    .line 541
    iget v3, v2, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v4, v1, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40a00000    # 5.0f

    add-float/2addr v3, v4

    .line 541
    .local v3, "weight":F
    goto :goto_0

    .line 544
    .end local v3    # "weight":F
    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 547
    .restart local v3    # "weight":F
    :goto_0
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v1, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .local v4, "defaultName":Landroid/content/ComponentName;
    new-instance v5, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v4, v6, v7, v3}, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 552
    .local v5, "historicalRecord":Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
    invoke-direct {p0, v5}, Landroid/support/v7/widget/ActivityChooserModel;->addHistoricalRecord(Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;)Z

    .line 553
    .end local v1    # "newDefaultActivity":Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v2    # "oldDefaultActivity":Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v3    # "weight":F
    .end local v4    # "defaultName":Landroid/content/ComponentName;
    .end local v5    # "historicalRecord":Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
    monitor-exit v0

    .line 554
    return-void

    .line 553
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setHistoryMaxSize(I)V
    .locals 2
    .param p1, "historyMaxSize"    # I

    .line 612
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 613
    :try_start_0
    iget v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryMaxSize:I

    if-ne v1, p1, :cond_0

    .line 614
    monitor-exit v0

    return-void

    .line 616
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryMaxSize:I

    .line 617
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 618
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 619
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserModel;->notifyChanged()V

    .line 621
    :cond_1
    monitor-exit v0

    .line 622
    return-void

    .line 621
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 366
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 367
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-ne v1, p1, :cond_0

    .line 368
    monitor-exit v0

    return-void

    .line 370
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    .line 371
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mReloadActivities:Z

    .line 372
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 373
    monitor-exit v0

    .line 374
    return-void

    .line 373
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setOnChooseActivityListener(Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 497
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_0
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 499
    monitor-exit v0

    .line 500
    return-void

    .line 499
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
