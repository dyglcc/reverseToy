.class final Landroid/support/v4/app/FragmentManagerState;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/app/FragmentManagerState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mActive:[Landroid/support/v4/app/FragmentState;

.field mAdded:[I

.field mBackStack:[Landroid/support/v4/app/BackStackState;

.field mNextFragmentIndex:I

.field mPrimaryNavActiveIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 646
    new-instance v0, Landroid/support/v4/app/FragmentManagerState$1;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerState$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/FragmentManagerState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    .line 622
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    .line 625
    sget-object v0, Landroid/support/v4/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/app/FragmentState;

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    .line 626
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    .line 627
    sget-object v0, Landroid/support/v4/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/app/BackStackState;

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    .line 628
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    .line 629
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentManagerState;->mNextFragmentIndex:I

    .line 630
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 634
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 639
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 640
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 641
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 642
    iget v0, p0, Landroid/support/v4/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 643
    iget v0, p0, Landroid/support/v4/app/FragmentManagerState;->mNextFragmentIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    return-void
.end method
