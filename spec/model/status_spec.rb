require "rails_helper"

describe "Status" do

  it "validates that status is filled" do
    status = Status.new
    status.valid?
    expect(status.errors[:status].present?).to eq(true)
  end

  it "validates that name is filled" do
    status = Status.new
    status.valid?
    expect(status.errors[:name].present?).to eq(true)
  end

  it "validates that likes is filled" do
    status = Status.new
    status.valid?
    expect(status.errors[:likes].present?).to eq(true)
  end

end
